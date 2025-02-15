
This is a repository of ready-to-install Knulli Linux apps/packages

# Repo setup/installation

Add the following code snippet to your `/userdata/system/pacman/pacman.conf` (create the file if it does not exist):

```conf
[knulli-apps]
SigLevel = Optional
Server = https://github.com/andriniaina/knulli-apps/releases/latest/download
```

And then run `pacman -Sy`

# Packages

## Using knulli

go to Knulli EmulationstationMenu *> Updates & Downloads > Content Downloader*


## Using command-line

```bash
# List repo packages:
pacman -Sl knulli-apps
# Install a package:
pacman -S <package-name>
```

**Note:** Some packages here are installed in `/`. Changes to the system disk are not automatically persisted in Knulli. For thos specific packages, you will need to call `batocera-save-overlay` to persist your changes.
