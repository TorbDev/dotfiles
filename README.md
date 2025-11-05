# dotfiles
Meine MacOS-Dotfiles, um Einstellungen auf verschiedenen Rechnern zu synchronisieren.

# Quick Start
## Homebrew installieren
Homebrew ist ein package manager für MacOS. Folge den Installationsanweiseungen [der offiziellen Dokumentation](https://brew.sh/).

Für eine Installation ohne Admin Rechte
- https://sarthavader.medium.com/installing-homebrew-without-admin-privileges-ee7fa941cd7a
Setzen des AppDirs
- https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#options

## Clone Dotfiles
Im Userverzeichnis
```
git clone https://github.com/TorbDev/dotfiles.git
```

## Brewfile nutzen
Durch das *Brewfile* werde alle notwendigen Abhängigkeiten durch Homebrew geladen

Im Verzeichnis mit dem *Brewfile*
```
brew bundle
```

Um ein neues *Brewfile* zu erstellen
```
brew bundle dump --force
```

## Raycast Konfiguration laden
1. Raycast öffnen
2. Settings im *Advanced* Reiter öffenen
3. `Rayconfig.rayconfig`-File imortieren

> [!IMPORTANT]
> Das File ist von Raycast mit einem Passwort geschützt




