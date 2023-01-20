# Littérature & combinatoire - Back end

Par Emma Veauvy, Juliette Jeannin, Lucie Augier, Grégoire Tinnes

*PHP 7+ required*

## Submodule (small-php)
### Init
```
git submodule init
git submodule update
```
### Update
```
git submodule foreach git pull https://github.com/loicqql/small-php main
```

## Fallback index.php
### For Wamp
Go to Apache parameters, open httpd.conf, add 
```
<Directory "${INSTALL_DIR}/www/">
  ...
  FallbackResource /index.php
</Directory>
```
## Access-Control-Allow-Origin
### For Wamp
Go to Apache parameters > modules > activate 'headers_module'\
Then, open httpd.conf, add 
```
<IfModule mod_headers.c>
    Header set Access-Control-Allow-Origin: *
</IfModule>
```
*Instead of the * you can also specify a specific domain*
