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
Go to Apache parameters 
Open httpd.conf
Add 
```
<Directory "${INSTALL_DIR}/www/">
  ...
  **FallbackResource /index.php***
</Directory>
```
