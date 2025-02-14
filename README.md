
This is a repository of ready-to-install Knulli Linux apps/packages

# Repo setup/installation

Add the following code snippet to your `/userdata/system/pacman/pacman.conf` (create the file if it does not exist):

```conf
[knulli-pacman-repo]
SigLevel = Optional
Server = https://github.com/andriniaina/knulli-pacman-repo/releases/latest/download
```

And then run `pacman -Sy`

# Packages

List repo packages:
```bash
pacman -Sl knulli-pacman-repo
```

Install a package:

```bash
pacman -S <package-name>
```

**Note:** Some packages here are installed in `/`. Changes to the system disk are not automatically persisted in Knulli. You will need to call `batocera-save-overlay` to persist your changes.
