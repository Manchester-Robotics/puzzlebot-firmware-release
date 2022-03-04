To generate .exe from python file (requires pyinstaller and python):
rmdir /s /q build_tmp
mkdir build_tmp
<path>\pyinstaller.exe --onefile --specpath build_tmp --workpath build_tmp\build --distpath build_tmp\dist <path>\edit_config.py
