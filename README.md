# ChangeLevel fix

Blocks the second call to the `ChangeLevel` function:

### Example of the map cycle

|Map name     |Default order |With plugin|
|-------------|--------------|-----------|
|dod_argentan |1             |1          |
|dod_avalanche|6             |2          |
|dod_flash    |2             |3          |
|dod_donner   |7             |4          |
|dod_anzio    |3             |5          |
|dod_kalt     |8             |6          |
|dod_jagd     |4             |7          |
|dod_colmar   |9             |8          |
|dod_palermo  |5             |9          |

Without this plugin, the server will do the following:

```txt
CHANGE LEVEL: dod_avalanche <--- Skipped
CHANGE LEVEL: dod_flash     <--- Current
```

### Supported Games

* Day of Defeat: Source

### Requirements

* [SourceMod](https://www.sourcemod.net) 1.11 or later

### Installation

* Download latest [release](https://github.com/dronelektron/change-level-fix/releases)
* Extract `plugins` and `gamedata` folders to `addons/sourcemod` folder of your server
