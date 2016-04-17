<?php
/****************************************************
*
* @File: 		nl_NL.php
* @Package:		GetSimple
* @Subject:		NL Dutch language file
* @Date:		10 Sept 2009
* @Revision:	October 1, 2014
* @Version:		GetSimple 3.3.0
* @Status:		Final
* @Traductors: 	Chris Cagle, Eric Oosterbaan (2.01)
* @Update		René Bakkers (2.03) | getsimple.dare-is.nl, Kim Ausloos (3.1) | leenmoerland.com, Leen Moerland (3.2) | Mediascape, Arno Bakker (3.3)
*
*****************************************************/

$i18n = array(

/* 
 * For: install.php
*/
"PHPVER_ERROR"			=>	"<b>Voortgang mislukt:</b> PHP 5.1.3 of hoger is benodigd, uw versie ",
"SIMPLEXML_ERROR"		=>	"<b>Voortgang mislukt:<</b> <em>SimpleXML</em> is niet geinstalleerd",
"CURL_WARNING"			=>	"<b>Waarschuwing:</b> <em>cURL</em> Niet geinstalleerd",
"TZ_WARNING"			=>	"<b>Waarschuwing:</b> <em>date_default_timezone_set</em> is niet gevonden",
"WEBSITENAME_ERROR"		=>	"<b>Fout:</b> Er is een probleem met de titel van de website",
"WEBSITEURL_ERROR"		=>	"<b>Fout:</b> Er is een probleem met de URL van de website",
"USERNAME_ERROR"		=>	"<b>Fout:</b> Gebruikersnaam is niet ingevuld",
"EMAIL_ERROR"			=>	"<b>Fout:</b> Er is een probleem met uw Email adres",
"CHMOD_ERROR"			=>	"<b>Voortgang mislukt:</b> Niet mogelijk om te schrijven in config file. <em>CHMOD 777</em> de folders /data/ en /backups/ en probeer opnieuw",
"EMAIL_COMPLETE"		=>	"Installatie geslaagd",
"EMAIL_USERNAME"		=>	"Uw gebruikersnaam is",
"EMAIL_PASSWORD"		=>	"Uw nieuwe wachtwoord is",
"EMAIL_LOGIN"			=>	"Login hier",
"EMAIL_THANKYOU"		=>	"Bedankt voor het gebruiken van",
"NOTE_REGISTRATION"		=>	"Uw registratie informatie is verzonden naar",
"NOTE_REGERROR"			=>	"<b>Fout:</b> Er is een probleem met het verzenden van de registratie informatie via email. Noteer het onderstaande wachtwoord",
"NOTE_USERNAME"			=>	"Uw gebruikersnaam is",
"NOTE_PASSWORD"			=>	"en uw wachtwoord is",
"INSTALLATION"			=>	"Installatie",
"LABEL_WEBSITE"			=>	"Website naam",
"LABEL_BASEURL"			=>	"Website basis URL",
"LABEL_SUGGESTION"		=>	"Onze suggestie is",
"LABEL_USERNAME"		=>	"Gebruikersnaam",
"LABEL_DISPNAME"		=>	"Weergave Name",
"LABEL_EMAIL"			=>	"Email adres",
"LABEL_INSTALL"			=>	"Installeer nu!",
"SELECT_LANGUAGE"		=> "Kies uw taal",
"CONTINUE_SETUP" 		=> "Doorgaan met installatie",
"DOWNLOAD_LANG" 		=> "Taalpakketten downloaden",
"SITE_UPDATED"			=> "Uw site is bijgewerkt",
"SERVICE_UNAVAILABLE"	=> "Deze pagina is tijdelijk niet beschikbaar",

/* 
 * For: pages.php
*/
"MENUITEM_SUBTITLE"		=>	"menu item",
"HOMEPAGE_SUBTITLE"		=>	"homepage",
"PRIVATE_SUBTITLE"		=>	"priv&eacute;",
"EDITPAGE_TITLE"		=>	"Verander pagina",
"VIEWPAGE_TITLE"		=>	"Bekijk pagina",
"DELETEPAGE_TITLE"		=>	"Verwijder pagina",
"PAGE_MANAGEMENT"		=>	"Pagina beheer",
"TOGGLE_STATUS"			=>	"wijzig status",
"TOTAL_PAGES"			=>	"Pagina(s) in totaal",
"ALL_PAGES"				=>	"Alle pagina's",

/* 
 * For: edit.php
*/
"PAGE_NOTEXIST"			=>	"De opgevraagde pagina bestaat niet",
"BTN_SAVEPAGE"			=>	"Bewaar pagina",
"BTN_SAVEUPDATES"		=>	"Bewaar updates",
"DEFAULT_TEMPLATE"		=>	"Standaard template",
"NONE"					=>	"Geen",
"PAGE"					=>	"pagina",
"NEW_PAGE"				=>	"Nieuwe pagina",
"PAGE_EDIT_MODE"		=>	"Pagina edit Mode",
"CREATE_NEW_PAGE"		=>	"Maak nieuwe pagina",
"VIEW"					=>	"<em>B</em>ekijk", // 'v' was the accesskey identifier
"PAGE_OPTIONS"			=>	"Pagina <em>O</em>pties", // 'o' is the accesskey identifier
"SLUG_URL"				=>	"Slug/URL",
"TAG_KEYWORDS"			=>	"Tags &amp; Keywords",
"PARENT_PAGE"			=>	"Moeder Pagina",
"TEMPLATE"				=>	"Template",
"KEEP_PRIVATE"			=>	"Pagina zichtbaarheid",
"ADD_TO_MENU"			=>	"Voeg toe aan menu",
"PRIORITY"				=>	"Belangrijk",
"MENU_TEXT"				=>	"Menu tekst",
"LABEL_PAGEBODY"		=>	"Pagina Body",
"CANCEL"				=>	"annuleer",
"BACKUP_AVAILABLE"		=>	"Backup aanwezig",
"MAX_FILE_SIZE"			=>	"Max. bestandsgrootte",
"LAST_SAVED"			=>	"Laatst bewaard",
"FILE_UPLOAD"			=>	"Bestand Upload",
"OR"					=>	"of",
"SAVE_AND_CLOSE"		=>  "Opslaan &amp; Sluiten",
"PAGE_UNSAVED"			=>	"Nog niet opgeslagen veranderingen",

/* 
 * For: upload.php
*/
"ERROR_UPLOAD"			=>	"Er is een probleem met het uploaden van uw bestand",
"FILE_SUCCESS_MSG"		=>	"Succes! Bestandslocatie",
"FILE_MANAGEMENT"		=>	"Bestands Beheer",
"UPLOADED_FILES"		=>	"Bestanden",
"SHOW_ALL"				=>	"Toon alles",
"VIEW_FILE"				=>	"Bekijk bestand",
"DELETE_FILE"			=>	"Verwijder bestand",
"TOTAL_FILES"			=>	"Bestanden in totaal",

/* 
 * For: logout.php
*/
"MSG_LOGGEDOUT"			=>	"U bent nu uitgelogd",

/* 
 * For: index.php
*/
"LOGIN"					=>	"Login",
"USERNAME"				=>	"Gebruikersnaam",
"PASSWORD"				=>	"Wachtwoord",
"FORGOT_PWD"			=>	"Wachtwoord vergeten?",
"CONTROL_PANEL"			=>	"Control Paneel",

/* 
 * For: navigation.php
*/
"CURRENT_MENU" 			=> 	"Huidig Menu",
"NO_MENU_PAGES" 		=> 	"Er zijn geen pagina's toegewezen aan het menu",

/* 
 * For: theme-edit.php
*/
"TEMPLATE_FILE" 		=> 	"Template bestand <b>%en</b> zijn geupdate!",
"THEME_MANAGEMENT" 		=> 	"Thema beheer",
"EDIT_THEME" 			=> 	"wijzig thema",
"EDITING_FILE" 			=> 	"wijzigen bestand",
"BTN_SAVECHANGES" 		=> 	"Bewaar veranderingen",
"EDIT" 					=> 	"Wijzig",

/* 
 * For: support.php
*/
"SETTINGS_UPDATED"		=> 	"Uw settings zijn gewijzgd",
"UNDO" 					=> 	"Ongedaan maken",
"SUPPORT" 				=> 	"Help",
"SETTINGS" 				=> 	"Voorkeuren",
"ERROR" 				=> 	"Fout",
"BTN_SAVESETTINGS" 		=> 	"Bewaar Voorkeuren",
"VIEW_FAILED_LOGIN"		=> 	"Bekijk niet geslaagde login pogingen",

/* 
 * For: log.php
*/
"MSG_HAS_BEEN_CLR" 		=> 	" is geleegd",
"LOGS" 					=> 	"Logs",
"VIEWING" 				=> 	"Bekijken",
"LOG_FILE" 				=> 	"Log bestand",
"CLEAR_ALL_DATA" 		=> 	"Leeg alle data van",
"CLEAR_THIS_LOG" 		=> 	"<em>L</em>eeg deze log",
"LOG_FILE_ENTRY" 		=> 	"LOGBESTAND ITEM",
"THIS_COMPUTER"			=>	"Deze Computer",

/* 
 * For: backup-edit.php
*/
"BAK_MANAGEMENT"		=>	"Backup beheer",
"ASK_CANCEL"			=>	"<em>C</em>ancel", // 'c' is the accesskey identifier
"ASK_RESTORE"			=>	"<em>R</em>estore", // 'r' is the accesskey identifier
"ASK_DELETE"			=>	"<em>D</em>elete", // 'd' is the accesskey identifier
"BACKUP_OF"				=>	"Backup of",
"PAGE_TITLE"			=>	"Pagina titel",
"YES"					=>	"Ja",
"NO"					=>	"Nee",
"DATE"					=>	"Datum",
"PERMS"					=>  "Rechten",

/* 
 * For: components.php
*/
"COMPONENTS"			=>	"Componenten",
"DELETE_COMPONENT"		=>	"Verwijder Component",
"EDIT"					=>	"Wijzig",
"ADD_COMPONENT"			=>	"<em>V</em>oeg component toe", // 'a' is the accesskey identifier
"SAVE_COMPONENTS"		=>	"Bewaar Componenten",

/* 
 * For: sitemap.php
*/
"SITEMAP_CREATED"		=>	"Sitemap gecre&euml;erd! Tevens hebben we 4 zoekmachines gepinged over de updates",
"SITEMAP_ERRORPING"		=>	"Sitemap gecre&euml;erd, maar er is wel een fout geconstateerd bij één of meerder zoekmachines tijdens het pingen",
"SITEMAP_ERROR"			=>	"Het is niet mogelijk om uw sitemap te genereren",
"SITEMAP_WAIT"			=>	"<b>Wacht a.u.b:</b> Sitemap website wordt gecreëerd",

/* 
 * For: theme.php
*/
"THEME_CHANGED"			=>	"Uw thema is met succes gewijzigd",
"CHOOSE_THEME"			=>	"Kies uw thema",
"ACTIVATE_THEME"		=>	"Activeer thema",
"THEME_SCREENSHOT"		=>	"Thema afbeelding",
"THEME_PATH"			=>	"Huidig thema pad",

/* 
 * For: resetpassword.php
*/
"RESET_PASSWORD"		=>	"Reset wachtwoord",
"YOUR_NEW"				=>	"Uw nieuwe",
"PASSWORD_IS"			=>	"wachtwoord is",
"ATTEMPT"				=>	"Poging",
"MSG_PLEASE_EMAIL"		=>	"Vul a.u.b. uw email adres in welke op dit system is geregistreerd, een nieuw wachtwoord wordt dan verzonden",
"SEND_NEW_PWD"			=>	"Verstuur nieuw wachtwoord",

/* 
 * For: settings.php
*/
"GENERAL_SETTINGS"		=>	"Algemene voorkeuren",
"WEBSITE_SETTINGS"		=>	"Website voorkeuren",
"LOCAL_TIMEZONE"		=>	"Lokale tijdszone",
"LANGUAGE"				=>	"Taal",
"USE_FANCY_URLS"		=>	"<b>Gebruik Fancy URLs</b> - Extra actieve vereisten: mod_rewrite",
"ENABLE_HTML_ED"		=>	"<b>Gebruik de HTML editor</b>",
"WARN_EMAILINVALID"		=>	"WAARSCHUWING: Dit email adres lijkt niet geldig te zijn!",
"ONLY_NEW_PASSWORD"		=>	"Voer een nieuw wachtwoord in, wanneer u uw huidige wilt veranderen",
"NEW_PASSWORD"			=>	"Nieuw wachtwoord",
"CONFIRM_PASSWORD"		=>	"Bevestig wachtwoord",
"PASSWORD_NO_MATCH"		=>	"Wachtwoorden komen niet overeen",
"PERMALINK" 			=> 	"Aangepaste Permalink Structuur",
"MORE" 					=> 	"meer",
"HELP" 					=> 	"help",
"FLUSHCACHE"        	=>  "Alle caches leegmaken",
"FLUSHCACHE-SUCCESS"	=>  "Alle Caches succesvol geleegd",
"DISPLAY_NAME"			=>  "Publiek weergegeven naam (niet gebruikersnaam)",

/* 
 * For: health-check.php
*/
"WEB_HEALTH_CHECK"		=>	"Website status controle",
"VERSION"				=>	"Versie",
"UPG_NEEDED"			=>	"Upgrade benodigd naar",
"CANNOT_CHECK"			=>	"Kan niet gecontroleerd worden!",
"LATEST_VERSION"		=>	"Laaste versie geinstalleerd",
"SERVER_SETUP"			=>	"Server setup",
"OR_GREATER_REQ"		=>	"of hoger is benodigd",
"OK"					=>	"OK",
"INSTALLED"				=>	"Geinstalleerd",
"NOT_INSTALLED"			=>	"Niet geinstalleerd",
"WARNING"				=>	"Waarschuwing",
"DATA_FILE_CHECK"		=>	"Data bestand integriteit controle",
"DIR_PERMISSIONS"		=>	"Map machtigingen",
"EXISTANCE"				=>	"%s Gevonden",
"MISSING_FILE"			=>	"Bestand onbreekt",
"BAD_FILE"				=>	"Foutief bestand",
"NO_FILE"				=>	"Geen bestand",
"GOOD_D_FILE"			=>	"Goed 'Niet toegestaan' bestand",
"GOOD_A_FILE"			=>	"Goed 'Toegestaan' bestand",
"CANNOT_DEL_FILE"		=>	"Kan bestand niet verwijderen",
"DOWNLOAD"				=>	"Download",
"WRITABLE"				=>	"Schrijfbaar",
"NOT_WRITABLE"			=>	"Niet schrijfbaar",

/* 
 * For: footer.php
*/
"POWERED_BY"			=>	"Draait op",

/* 
 * For: backups.php
*/
"PAGE_BACKUPS"			=>	"Backups",
"ASK_DELETE_ALL"		=>	"<em>V</em>erwijder alles",
"DELETE_ALL_BAK"		=>	"Verwijder alle backups?",
"TOTAL_BACKUPS"			=>	"Backups in totaal",

/* 
 * For: archive.php
*/
"SUCC_WEB_ARCHIVE"		=>	"Website met succes gearchiveerd!",
"SUCC_WEB_ARC_DEL"		=>	"Website archief met succes verwijderd",
"WEBSITE_ARCHIVES"		=>	"Website archieven",
"ARCHIVE_DELETED"		=>	"Archief met succes verwijderd",
"CREATE_NEW_ARC"		=>	"Cre&euml;er een nieuw archief",
"ASK_CREATE_ARC"		=>	"<em>C</em>re&euml;er nu een nieuw archief",
"CREATE_ARC_WAIT"		=>	"<b>Wacht a.u.b.:</b> Webiste archief wordt gecreëerd...",
"DOWNLOAD_ARCHIVES"		=>	"Download archief",
"DELETE_ARCHIVE"		=>	"Verwijder archief",
"TOTAL_ARCHIVES"		=>	"Totaal archieven",

/* 
 * For: include-nav.php
*/
"WELCOME"				=>	"Welkom", // used as 'Welcome USERNAME!'
"TAB_PAGES"				=>	"<em>P</em>agina's",
"TAB_FILES"				=>	"<em>B</em>estanden",
"TAB_THEME"				=>	"<em>T</em>hema",
"TAB_BACKUPS"			=>	"<em>B</em>ackups",
"PLUGINS_NAV" 			=>  "Plu<em>g</em>ins",
"TAB_SETTINGS"			=>	"<em>V</em>oorkeuren",
"TAB_SUPPORT"			=>	"Supp<em>o</em>rt",
"TAB_LOGOUT"			=>	"<em>U</em>itloggen",

/* 
 * For: sidebar-files.php
*/
"BROWSE_COMPUTER"		=>	"Blader op uw computer",
"UPLOAD"				=>	"Upload",

/* 
 * For: sidebar-support.php
*/
"SIDE_SUPPORT_LOG"		=>	"Supp<em>o</em>rt",
"SIDE_HEALTH_CHK"		=>	"Website <em>s</em>tatus controle",
"SIDE_DOCUMENTATION"	=>	"Wiki Documentatie",
"SIDE_VIEW_LOG"			=>	"Bekijk Log",

/* 
 * For: sidebar-theme.php
*/
"SIDE_VIEW_SITEMAP"		=>	"<em>B</em>ekijk sitemap",
"SIDE_GEN_SITEMAP"		=>	"<em>G</em>enereer sitemap",
"SIDE_COMPONENTS"		=>	"<em>W</em>ijzig Componenten",
"SIDE_EDIT_THEME"		=>	"Wijzig <em>T</em>hema",
"SIDE_CHOOSE_THEME"		=>	"Kies <em>T</em>hema",

/* 
 * For: sidebar-pages.php
*/
"SIDE_CREATE_NEW"		=>	"<em>C</em>re&euml;er nieuwe pagina",
"SIDE_VIEW_PAGES"		=>	"Bekijk alle <em>P</em>agina's",

/* 
 * For: sidebar-pages.php
*/
"SIDE_GEN_SETTINGS"		=>	"Algemene <em>I</em>nstellingen",
"SIDE_USER_PROFILE"		=>	"<em>G</em>ebruikersprofiel",

/* 
 * For: sidebar-pages.php
*/
"SIDE_VIEW_BAK"			=>	"Bekijk pagina backup",
"SIDE_WEB_ARCHIVES"		=>	"<em>W</em>ebsite archief",
"SIDE_PAGE_BAK"			=>	"Pagina <em>B</em>ackups",

/* 
 * For: error_checking.php
*/
"ER_PWD_CHANGE"			=>	"Niet vergeten uw <a href=\"settings.php#profile\">wachtwoord</a> te veranderen, i.p.v. het huidige gegeneerde wachtwoord...",
"ER_BAKUP_DELETED"		=>	"De backup is verwijderd voor %s",
"ER_REQ_PROC_FAIL"		=>	"Het gevraagde proces is mislukt",
"ER_YOUR_CHANGES"		=>	"Uw veranderingen voor %s zijn bewaard",
"ER_HASBEEN_REST"		=>	"%s is hersteld",
"ER_HASBEEN_DEL"		=>	"%s is verwijderd",
"ER_CANNOT_INDEX"		=>	"Het is niet mogelijk om de URl van de index pagina te wijzigen",
"ER_SETTINGS_UPD"		=>	"Uw voorkeuren zijn bijgewerkt",
"ER_OLD_RESTORED"		=>	"Uw oude voorkeuren zijn terug gezet",
"ER_NEW_PWD_SENT"		=>	"Een nieuw wachtwoord is verzonden naar uw email",
"ER_SENDMAIL_ERR"		=>	"Er is een probleem met het verzenden van de email, probeer opnieuw",
"ER_FILE_DEL_SUC"		=>	"Bestand met succes verwijderd",
"ER_PROBLEM_DEL"		=>	"Er is een probleem met het verwijderen van het bestand",
"ER_COMPONENT_SAVE"		=>	"Uw componenten zijn bewaard",
"ER_COMPONENT_REST"		=>	"Uw componenten zijn teruggezet",
"ER_CANCELLED_FAIL"		=>	"<b>Geannuleerd:</b> Deze update is geannuleerd",

/* 
 * For: changedata.php
*/
"CANNOT_SAVE_EMPTY"		=>	"Lege pagina opslaan is niet mogelijk",
"META_DESC" 			=> "Meta beschrijving",

/* 
 * For: template_functions.php
*/
"FTYPE_COMPRESSED"		=>	"Gecomprimeerd", //a file-type
"FTYPE_VECTOR"			=>	"Vector", //a file-type
"FTYPE_FLASH"			=>	"Flash", //a file-type
"FTYPE_VIDEO"			=>	"Video", //a file-type
"FTYPE_AUDIO"			=>	"Audio", //a file-type
"FTYPE_WEB"				=>	"Web", //a file-type
"FTYPE_DOCUMENTS"		=>	"Document", //a file-type
"FTYPE_SYSTEM"			=>	"Systeem", //a file-type
"FTYPE_MISC"			=>	"Overig", //a file-type
"IMAGES"				=>	"Foto",

/* 
 * For: login_functions.php
*/
"FILL_IN_REQ_FIELD"		=>	"Vul a.u.b. alle benodigde velden in",
"LOGIN_FAILED"			=>	"Login mislukt, controleer uw gebruikersnaam en wachtwoord",

/* 
 * For: Date Format
*/
"DATE_FORMAT"			=>	"j, m, Y", //please keep short
"DATE_AND_TIME_FORMAT"	=>	"F jS, Y - g:i A", //date and time

/* 
 * For: support.php
*/
"WELCOME_MSG"			=>	"Bedankt voor het kiezen van GetSimple als uw content management systeem!",
"WELCOME_P"				=>	"GetSimple maakt het beheren van een website eenvoudig door zijn gebruiksvriendelijke user interface. Ons streven is om het systeem zowel eenvoudig als krachtig te houden, zodat het voor zowel de gebruiker als de ontwikkelaar geschikt is.</p><p><strong>De eerste stappen:</strong></p>",
"GETTING_STARTED"		=>	"De eerste stappen",

/* 
 * For: image.php
*/

"CURRENT_THUMBNAIL" 	=> "Huidige Thumbnail",
"RECREATE" 				=> "maak opnieuw",
"CREATE_ONE" 			=> "maak er een",
"IMG_CONTROl_PANEL" 	=> "Afbeelding Beheer Paneel",
"ORIGINAL_IMG" 			=> "Originele Afbeelding",
"CLIPBOARD_INSTR" 		=> "Alles selecteren en dan <em>ctrl-c</em> of <em>command-c</em>",
"CREATE_THUMBNAIL" 		=> "Maak Thumbnail",
"CROP_INSTR_NEW" 		=> "<em>ctrl-Q</em> of <em>command-Q</em> voor vierkant",
"SELECT_DIMENTIONS" 	=> "Selecteer Afmetingen",
"HTML_ORIG_IMG" 		=> "Plaats Afbeelding in HTML",
"LINK_ORIG_IMG" 		=> "Plaats Afbeelding als Link",
"HTML_THUMBNAIL" 		=> "Thumbnail HTML",
"LINK_THUMBNAIL" 		=> "Thumbnail Link",
"HTML_THUMB_ORIG" 		=> "Van Thumbnail-naar-Afb. HTML",

/* 
 * For: plugins.php
*/

"PLUGINS_MANAGEMENT"	=> "Plugin Beheer",
"PLUGINS_INSTALLED" 	=> "Geinstalleerde Plugins",
"PLUGIN_DISABLED"   => "Gedeactiveerde Plugins",
"SHOW_PLUGINS"			=> "Toon geinstalleerde Plugi<em>n</em>s",
"PLUGIN_NAME" 			=> "Naam",
"PLUGIN_DESC" 			=> "Beschrijving",
"PLUGIN_VER" 			=> "Versie",
"PLUGIN_UPDATED"		=> "Plugin bijgewerkt",

/***********************************************************************************
 * SINCE Version 3.0
***********************************************************************************/

/* 
 * For: setup.php
 */

"ROOT_HTACCESS_ERROR" 		=> "Het is niet gelukt om  .htaccess te maken in root! Kopieer <b>%s</b> naar <b>.htaccess</b> en verander <code>%s</code> naar <code>%s</code>",
"REMOVE_TEMPCONFIG_ERROR" 	=> "Het is niet gelukt om <b>%s</b> te verwijderen! Doe het aub handmatig.",
"MOVE_TEMPCONFIG_ERROR" 	=> "Het is niet gelukt om <b>%s</b> te hernoemen naar <b>%s</b>! Doe het aub handmatig.",
"KILL_CANT_CONTINUE" 		=> "Kan niet doorgaan. Los de fouten op en probeer opnieuw.",
"REFRESH" 					=> "Vernieuwen",
"BETA"						=> "Beta / Bleeding Edge",

/*
 * Misc Cleanup Work
 */

# new to 3.0 
"HOMEPAGE_DELETE_ERROR" => "De homepage kan niet verwijderd worden", //deletefile
"NO_ZIPARCHIVE" 		=> "De ZipArchive extentie is niet ingeladen. Deze actie kan niet voltooid worden", //zip
"REDIRECT_MSG"			=> "Als u niet automatisch doorverwezen wordt kunt u <a href=\"%s\">hier</a> klikken.", //basic
"REDIRECT"				=> "Doorverwijzing", //basic
"DENIED"				=> "Geweigerd", //sitemap
"DEBUG_MODE"			=> "DEBUG MODE", //nav-include
"DOUBLE_CLICK_EDIT"		=> "Dubbelklik om aan te passen", //components
"THUMB_SAVED"			=> "Thumbnail Opgeslagen", //image
"EDIT_COMPONENTS"		=>	"Componenten aanpassen", //components
"REQS_MORE_INFO"		=> "Voor meer info over de verplichte modules kunt u de <a href=\"%s\" target=\"_blank\" >vereiste modules pagina</a> raadplegen.", //install & health-check
"SYSTEM_UPDATE" 		=> "Systeem Update", // update.php
"AUTHOR" 				=> "Auteur", //plugins.php
"ENABLE" 				=> "Activeer", //plugins.php
"DISABLE" 				=> "Deactiveer", //plugins.php
"NO_THEME_SCREENSHOT" 	=> "Er is geen afbeelding van dit thema beschikbaar", //theme.php
"UNSAVED_INFORMATION" 	=> "Je staat op het punt deze pagina te verlaten en zal data die niet opgeslagen werd verliezen.", //edit.php
"BACK_TO_WEBSITE" 		=> "Terug naar de website", //index & resetpassword
"SUPPORT_FORUM" 		=> "Support Forum", //support.php
"FILTER" 				=> "Filter", //pages.php
"UPLOADIFY_BUTTON" 		=> "Bestanden/afbeelden uploaden", //upload.php
"FILE_BROWSER" 			=> "Bestandsbrowser", //filebrowser.php
"SELECT_FILE" 			=> "Selecteer bestand", //filebrowser.php
"CREATE_FOLDER" 		=> "Maak folder aan", //upload.php
"THUMBNAIL" 			=> "Thumbnail", //filebrowser.php
"ERROR_FOLDER_EXISTS" 	=> "De map die u wilt aanmaken bestaat reeds", //upload.php
"FOLDER_CREATED" 		=> "De nieuwe map werd aangemaakt: <strong>%s</strong>", //upload.php
"ERROR_CREATING_FOLDER" => "Er is een fout opgetreden tijdens het aanmaken van de nieuwe map", //upload.php
"DELETE_FOLDER" 		=> "Map wissen", //upload.php
"FILE_NAME" 			=> "Bestandsnaam", //multiple tr header rows
"FILE_SIZE" 			=> "Grootte", //multiple tr header rows
"ARCHIVE_DATE" 			=> "Archivatiedatum", //archive.php
"CKEDITOR_LANG" 		=> "en", // edit.php ; set CKEditor language, don't forget to include CKEditor language file in translation zip

# new to 3.1 
"XML_INVALID" 			=> "Ongeldige XML", //template-functions.php
"XML_VALID" 			=> "Geldige XML",
"UPDATE_AVAILABLE" 		=> "Bijwerken naar", //plugins.php
"STATUS"				=> "Status", //plugins.php
"CLONE" 				=> "Dupliceren", //edit.php
"CLONE_SUCCESS" 		=> "%s succesvol gedupliceerd", //pages.php
"COPY" 					=> "Copy", //pages.php
"CLONE_ERROR" 			=> "Probleem bij het dupliceren van <b>%s</b>",  //pages.php
"AUTOSAVE_NOTIFY" 		=> 'Pagina automatisch opgeslagen op', //edit.php
"MENU_MANAGER" 			=> '<em>M</em>enu Manager', //edit.php
"GET_PLUGINS_LINK" 		=> 'Download <em>M</em>eer Plugins',
"SITEMAP_REFRESHED" 	=> "De sitemap is vernieuwd", //edit.php
"LOG_FILE_EMPTY" 		=> 	"Deze log file is leeg", //log.php
"SHARE" 				=> 	"Delen", //footer.php
"NO_PARENT" 			=> "Geen Parent", //edit.php
"REMAINING" 			=> "tekens over", //edit.php
"NORMAL" 				=> "Normaal", //edit.php
"ERR_CANNOT_DELETE" 	=> "Kan %s niet verwijderen. Doe dit aub handmatig.", //common.php
"ADDITIONAL_ACTIONS" 	=> "Andere acties", //edit.php
"ITEMS" 				=> "items", //upload.php
"SAVE_MENU_ORDER" 		=> "Menu Volgorde opslaan", //menu-manager.php
"MENU_MANAGER_DESC" 	=> "Drag-and-drop de menu items totdat de gewenste volgorde bereikt is, klik dan op <strong>'Menu Order opslaan'</strong>.", //menu-manager.php
"MENU_MANAGER_SUCCESS" 	=> "De nieuwe menu volgorde is opgeslagen", //menu-manager.php

/* 
 * For: api related pages
 */
"API_ERR_MISSINGPARAM" 	=> 'parameter bestaat niet',
"API_ERR_BADMETHOD" 	=> 'method %s bestaat niet',
"API_ERR_AUTHFAILED" 	=> 'authenticatie mislukt',
"API_ERR_AUTHDISABLED"	=> 'authenticatie uitgeschakeld',
"API_ERR_NOPAGE" 		=> 'opgevraagde pagina %s bestaat niet',
"API_CONFIGURATION" 	=> 'API Configuratie',
"API_ENABLE" 			=> 'API inschakelen',
"API_REGENKEY" 			=> 'Key opnieuw genereren',
"API_DISCLAIMER" 		=> "Door het inschakelen van de API staat u externe applicaties, die een kopie van uw key hebben, toegang tot uw website toe. <b>Deel deze key alleen met applicaties die u vertrouwd.</b>",
"API_REGEN_DISCLAIMER" 	=> "Wanneer u de API key opnieuw genereert moet u externe applicaties opnieuw verbinden.",
"API_CONFIRM" 			=> "WEET U HET ZEKER?",



"X" 					=> "niet vertaald",


/*
 * Additions for 3.1
 */
"DEBUG_CONSOLE" 		=> 'Debug Console'

);

?>
