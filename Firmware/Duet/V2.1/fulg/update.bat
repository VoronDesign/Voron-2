wget --ftp-user=admin -r -nH ftp://10.0.0.34/macros
wget --ftp-user=admin -r -nH ftp://10.0.0.34/sys

del .\sys\*.bak
del .\sys\*.bin
del .\sys\heightmap.csv
del .\sys\dwc2settings.json
