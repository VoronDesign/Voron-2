![](cura_profiles.png)

Installing
==========

Copy these directories entirely into the Cura profile location for your platform.

* `$CURA_VERSION` is the current version of Cura that is installed.

**Windows**
```
C:\Users\%USERNAME%\AppData\Roaming\cura\$CURA_VERSION\
```

**MacOS**
```
$User/Library/Application\ Support/Cura/$CURA_VERSION/
```

**Linux**
```
$USER/.local/share/cura/$CURA_VERSION/settings/
```


Start Cura, click the `Add printer` button, expand the `Other` category and select `VORON 2`.

Once it is added, go to the Machine Settings and set your build size accordingly. Default size is 250x250x250.

Updating
========

If you already used the VORON profile for a while, you likely changed some parts of it. After you've updated the profile to the current version, delete the `voron2_*.inst.cfg` files in `.../definition_changes` ase they contain your local modifications, which will override the ones in the stock profile.

You can reset everything if you delete all VORON-related `.cfg` files inside these directories:
```
...\definition_changes
...\extruders
...\machine_instances
...\quality_changes
...\user
```

As usual, make a backup first of your Cura profile to make sure you don't lose anything.