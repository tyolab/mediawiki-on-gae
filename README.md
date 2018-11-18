# MediaWiki on App Engine Starter Project

How To Run MediaWiki on Google App Engine

NOTE: This mediawiki-on-gae project is no longer required to deploy MediaWiki Version 1.31 on GAE with PHP Version 7.2.

With PHP Runtime Version 7.2 the technical limitations of GAE (such as "max_execution_time") have been removed, and MediaWiki can now be deployed to GAE with few revisions to the ordinary deployment steps. A new guide to MediaWiki on GAE deployment for MediaWiki Version 1.31 will replace most of this mediawiki-on-gae project in the future.

See: https://cloud.google.com/appengine/docs/standard/php7/runtime

Contents

1 WARNING

2 Overview

3 Installation

4 See Also

WARNING

To run older versions of MediaWiki on Google App Engine (GAE), please make sure you have your LocalSettings.php file set properly before deploying the software to Google App Engine

If you need Infobox template(s) which requires Scribunto extension to parse, Mediawiki on Google App Engine is not a good idea.

Overview

In short, in the past you couldn't install MediaWiki via its own installer for initializing database and such on GAE because of one small thing - "max_execution_time". Google App Engine's max_execution_time was set to 30 seconds and unchangeable. However, running MediaWiki on GAE was still doable providing that the wiki database was initialized in the following methods:

running MediaWiki installer locally and set the database host to Google Cloud SQL
import the database from the wiki database dump

use mysql locally with host set to Google Cloud SQL

use the import tool available directly from https://console.developers.google.com/project

Installation

Please follow the steps if you need to install the old MediaWiki software (1.25.1):

Get the MediaWiki On GAE source code

git clone https://github.com/tyolab/mediawiki-on-gae.git

Update the mediawiki-on-gae/LocalSettings.php file according to your own settings. Or you can read the sample LocalSettings.php code here.

After setting your LocalSettings.php properly, execute following scripts
./cp_files_after_editing.sh

run the code locally (optional)
./run.sh

deploy to Google App Engine
./deploy.sh

If you want to store files (particularly images) on Google Cloud Storage, please see how to enable MediaWiki's CloudStorage Extension.
