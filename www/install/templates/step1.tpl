<table width="100%" border="0" style="margin-top:10px;" class="data highlight">
	<tr>
		<th>check</th>
		<th style="width:75px;">status</th>
	</tr>
	<tr class="alt">
		<td>Checking for Curl support:{if !$cfg->curlCheck}<br /><span class="warn">The PHP installation lacks support for curl.</span>{/if}</td>
		<td>{if $cfg->curlCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking for sha1():{if !$cfg->sha1Check}<br /><span class="error">The PHP installation lacks support for sha1.</span>{/if}</td>
		<td>{if $cfg->sha1Check}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking PHP PDO extension:{if !$cfg->PDOCheck}<br /><span class="error">The PHP installation lacks support for PDO.</span>{/if}</td>
		<td>{if $cfg->PDOCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking for GD support:{if !$cfg->gdCheck}<br /><span class="warn">The PHP installation lacks support for GD.</span>{/if}</td>
		<td>{if $cfg->gdCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking for Pear:{if !$cfg->pearCheck}<br /><span class="error">Cannot find PEAR. To install PEAR follow the instructions at <a href="http://pear.php.net/manual/en/installation.php" target="_blank">http://pear.php.net/manual/en/installation.php</a></span>{/if}</td>
		<td>{if $cfg->pearCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that Smarty cache is writeable:{if !$cfg->cacheCheck}<br /><span class="error">The template cache folder must be writable. A quick solution is to run:<br />chmod 777 {$cfg->SMARTY_DIR}/templates_c</span>{/if}</td>
		<td>{if $cfg->cacheCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking that anime covers dir is writeable:{if !$cfg->animeCoversCheck}<br /><span class="error">The covers/anime dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/anime</span>{/if}</td>
		<td>{if $cfg->animeCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that audio covers dir is writeable:{if !$cfg->audioCoversCheck}<br /><span class="error">The covers/audio dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/audio</span>{/if}</td>
		<td>{if $cfg->audioCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking that audio sample dir is writeable:{if !$cfg->audiosampleCoversCheck}<br /><span class="error">The covers/audiosample dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/audiosample</span>{/if}</td>
		<td>{if $cfg->audiosampleCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that book covers dir is writeable:{if !$cfg->bookCoversCheck}<br /><span class="error">The covers/book dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/book</span>{/if}</td>
		<td>{if $cfg->bookCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking that console covers dir is writeable:{if !$cfg->consoleCoversCheck}<br /><span class="error">The covers/console dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/console</span>{/if}</td>
		<td>{if $cfg->consoleCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that movie covers dir is writeable:{if !$cfg->movieCoversCheck}<br /><span class="error">The covers/movies dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/movies</span>{/if}</td>
		<td>{if $cfg->movieCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking that music covers dir is writeable:{if !$cfg->musicCoversCheck}<br /><span class="error">The covers/music dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/music</span>{/if}</td>
		<td>{if $cfg->musicCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that preview picture dir is writeable:{if !$cfg->previewCoversCheck}<br /><span class="error">The covers/preview dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/preview</span>{/if}</td>
		<td>{if $cfg->previewCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking that sample picture dir is writeable:{if !$cfg->sampleCoversCheck}<br /><span class="error">The covers/sample dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/sample</span>{/if}</td>
		<td>{if $cfg->sampleCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that video sample dir is writeable:{if !$cfg->videoCoversCheck}<br /><span class="error">The covers/video dir must be writable. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}/covers/video</span>{/if}</td>
		<td>{if $cfg->videoCoversCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking that config.php is writeable:{if !$cfg->configCheck}<br /><span class="error">The installer cannot write to {$cfg->nZEDb_WWW}/config.php. A quick solution is to run:<br />chmod 777 {$cfg->nZEDb_WWW}</span>{/if}</td>
		<td>{if $cfg->configCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking that install.lock is writeable:{if !$cfg->lockCheck}<br /><span class="error">The installer cannot write to {$cfg->INSTALL_DIR}/install.lock. A quick solution is to run:<br />chmod 777 {$cfg->INSTALL_DIR}</span>{/if}</td>
		<td>{if $cfg->lockCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking for schema files:{if !$cfg->schemaCheck}<br /><span class="error">One or all of the schema files are missing, please make sure they are placed placed in: {$cfg->DB_DIR}/</span>{/if}</td>
		<td>{if $cfg->schemaCheck}<span class="success">OK</span>{else}<span class="error">Error</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking PHP's version:{if !$cfg->phpCheck}<br /><span class="warn">Your PHP verion is lower than recommened (5.4.0). You may encounter errors if you proceed.</span>{/if}</td>
		<td>{if $cfg->phpCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking date.timezone:{if !$cfg->timezoneCheck}<br /><span class="warn">You have no default timezone set in php.ini. e.g date.timezone = America/New_York</span>{/if}</td>
		<td>{if $cfg->timezoneCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking max_execution_time:{if !$cfg->timelimitCheck}<br /><span class="warn">Your PHP installation's max_execution_time setting is low, please consider increasing it >= 120</span>{/if}</td>
		<td>{if $cfg->timelimitCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking PHP's memory_limit:{if !$cfg->memlimitCheck}<br /><span class="warn">Your PHP installation's memory_limit setting is low, please consider increasing it >= 1024M.</span>{/if}</td>
		<td>{if $cfg->memlimitCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="">
		<td>Checking PHP OpenSSL Extension:{if !$cfg->opensslCheck}<br /><span class="warn">Your PHP installation does not have the openssl extension loaded. SSL Usenet connections will fail.</span>{/if}</td>
		<td>{if $cfg->opensslCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="alt">
		<td>Checking PHP EXIF Extension:{if !$cfg->exifCheck}<br /><span class="warn">Your PHP installation does not have the exif extension loaded. It is required for NFO checking and various other functions.</span>{/if}</td>
		<td>{if $cfg->exifCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
	</tr>
	<tr class="">
{if $smarty.server.SERVER_SOFTWARE|truncate:8:"" == 'lighttpd'}
		<td>Instructions for Lighttpd's mod_rewrite:<br /><span class="warn">It is not possible for me to check you have enabled this properly! YOU will need to ensure that "mod_rewrite" is included in server.modules, check lighttpd for this, also ensure the rewrite rules are installed for your host. See misc/urlrewriting/lighttpd.txt for examples.</span></td>
		<td><span class="warn">Warning</span></td>
{else}
		<td>Checking for Apache's mod_rewrite:{if !$cfg->rewriteCheck}<br /><span class="warn">The Apache module mod_rewrite is not loaded. This module is required, please enable it if you are running Apache</span>{/if}</td>
		<td>{if $cfg->rewriteCheck}<span class="success">OK</span>{else}<span class="warn">Warning</span>{/if}</td>
{/if}		
	</tr>
	
</table>

<div align="center">
{if !$cfg->error}
	<p>No problems were found and you are ready to install.</p>
	<form action="step2.php"><input type="submit" value="Go to step two: Set up the database" /></form>              
{else}
	<div class="error">Errors encountered - nZEDb will not function correctly unless these problems are solved.</div> 
{/if}
</div>
