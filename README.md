# MediaWiki on App Engine Starter Project

Run MediaWiki on Google App Engine
Contents [hide] 
1 WARNING
2 Overview
3 Installation
4 See Also
WARNING[edit]
To run MediaWiki on Google App Engine (GAE), please make sure you have your LocalSettings.php file set properly before deploying the software to Google App Engine
If you need Infobox template(s) which requires Scribunto extension to parse, Mediawiki on Google App Engine is not a good idea.
Overview[edit]
In short, you can't install MediaWiki via its own installer for initializing database and such on GAE because of one small thing - "max_execution_time". Google App Engine's max_execution_time is set to 30 seconds and unchangeable. However, running MediaWiki on GAE is still doable providing that the wiki database is initialized in the following methods:

running MediaWiki installer locally and set the database host to Google Cloud SQL
import the database from the wiki database dump
use mysql locally with host set to Google Cloud SQL
use the import tool available directly from https://console.developers.google.com/project
Installation[edit]
Please follow the steps to install MediaWiki software (1.25.1):

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
