@echo off
set "filename=%~n1"  :: Extract the name of the file without extension
set "newfile=%filename%.exe" :: Append .exe to the filename
set "newfile2=%filename%.c"  :: Set .c as the output source file extension
set "iconfile=%2" :: The second parameter is the icon path

:: Generate C++ code with Cython (the -+ flag generates C++ code)
cython --embed %1

:: Create a temporary resource file to include the icon
@echo IDI_ICON1 ICON "%iconfile%" > temp_icon.rc

:: Compile the resource file into an object file
windres temp_icon.rc -o temp_icon.o

:: Compile with g++ (assuming Python 3.12, adjust -lpython312 for other versions)
g++ -I"C:\Program Files\Python312\include" -L"C:\Program Files\Python312\libs" -o %newfile% %newfile2% temp_icon.o -lpython313 -static-libgcc -static-libstdc++ -municode

:: Cleanup temporary files
del temp_icon.rc
del temp_icon.o
