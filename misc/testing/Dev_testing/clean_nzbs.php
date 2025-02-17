<?php
// This script removes all NZB's not found in the DB and all releases with no NZB.

passthru('clear');
if (isset($argv[1]) && ($argv[1] === "true" || $argv[1] === "delete"))
{
	require_once dirname(__FILE__) . '/../../../www/config.php';
	require_once nZEDb_LIB . 'site.php';
	require_once nZEDb_LIB . 'nzb.php';
	require_once nZEDb_LIB . 'releases.php';
	require_once nZEDb_LIB . 'consoletools.php';

	$s = new Sites();
	$site = $s->get();
	$db = new DB();
	$releases = new Releases();
	$nzb = new NZB();
	$consoletools = new ConsoleTools();
	$nzb = new NZB(true);
	$timestart = TIME();
	$checked = $deleted = 0;
	$couldbe = $argv[1] === "true" ? $couldbe = "could be " : "";
	echo "Getting List of nzbs to check against db.\n";
	$dirItr = new RecursiveDirectoryIterator($site->nzbpath);
	$itr = new RecursiveIteratorIterator($dirItr, RecursiveIteratorIterator::LEAVES_ONLY);
	foreach ($itr as $filePath)
	{
		if (is_file($filePath))
		{
			$nzbpath = 'compress.zlib://'.$filePath;
			$nzbfile = @simplexml_load_file($nzbpath);
			if ($nzbfile && preg_match('/([a-f0-9]+)\.nzb/', $filePath, $guid))
			{
				$res = $db->queryOneRow(sprintf("SELECT id, guid, nzbstatus FROM releases WHERE guid = %s", $db->escapeString(stristr($filePath->getFilename(), '.nzb.gz', true))));
				if ($res === false)
				{
					if ($argv[1] === "delete")
						$releases->fastDelete("NULL", $guid[1], $site);
					$deleted++;
				}
				elseif ( isset($res) && $res['nzbstatus'] != 1 )
					$db->queryExec(sprintf("UPDATE releases SET nzbstatus = 1 WHERE id = %s", $res['id']));
				$time = $consoletools->convertTime(TIME() - $timestart);
				$consoletools->overWrite("Checking NZBs: ".$deleted." of ".++$checked." ".$couldbe."deleted from disk,  Running time: ".$time);
			}
		}
		else
		{
			if ($argv[1] === "delete")
				$releases->fastDelete("NULL", $guid[1], $site);
			$deleted++;
		}
		
	}
	echo "\n".number_format(++$checked)." nzbs checked, ".number_format($deleted)." nzbs ".$couldbe."deleted.\n";

	$timestart = TIME();
	$checked = $deleted = 0;
	echo "\nGetting List of releases to check against nzbs.\n";
	$consoletools = new ConsoleTools();
	$res = $db->prepare('SELECT id, guid, nzbstatus FROM releases');
	$res->execute();
	if ($res->rowCount() > 0)
	{
		$consoletools = new ConsoleTools();
		foreach ($res as $row)
		{
			$nzbpath = $nzb->getNZBPath($row["guid"], $site->nzbpath, false, $site->nzbsplitlevel);
			if (!file_exists($nzbpath))
			{
				if ($argv[1] === "delete")
				{
					$releases->fastDelete($row['id'], $row['guid'], $site);
					usleep(10000);
				}
				$deleted++;
			}
			elseif (file_exists($nzbpath) && isset($row) && $row['nzbstatus'] != 1)
				$db->queryExec(sprintf("UPDATE releases SET nzbstatus = 1 WHERE id = %s", $row['id']));

			$time = $consoletools->convertTime(TIME() - $timestart);
			$consoletools->overWrite("Checking Releases: ".$deleted." of ".++$checked." ".$couldbe."deleted from db,  Running time: ".$time);
		}
	}
	echo "\n".number_format($checked)." releases checked, ".number_format($deleted)." releases ".$couldbe."deleted.\n";
}
else
	exit("This script removes all nzbs not found in the db and releases with no nzbs found.\nFor a dry run, to see how many would be deleted, run:\nphp clean_nzbs.php true\nTo delete all affected, run:\nphp clean_nzbs.php delete\n");
?>
