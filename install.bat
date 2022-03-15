@echo off
copy ".\x64\Release\gr-rtty.dll" "D:\Program Files\GNURadio-3.7\bin\."
mkdir "D:\Program Files\GNURadio-3.7\lib\site-packages\rtty"
copy ".\python\__init__.py" "D:\Program Files\GNURadio-3.7\lib\site-packages\rtty\."
copy ".\swig\rtty_swig.py" "D:\Program Files\GNURadio-3.7\lib\site-packages\rtty\."
copy ".\x64\Release\rtty_swig.dll" "D:\Program Files\GNURadio-3.7\lib\site-packages\rtty\_rtty_swig.pyd"
copy ".\grc\rtty_decode_ff.xml" "D:\Program Files\GNURadio-3.7\share\gnuradio\grc\blocks\."