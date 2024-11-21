# pytoexe
.py to .exe using cython and gcc (windows)
# Installation
1. Download Python and pip
2. Run ```pip install cython```
3. Add the python paths (Scripts, ...) to PATH
4. Install MinGW
5. Add ```C:\msys64\mingw64\bin``` to path
6. Open the MinGW shell and ```pacman -Syu```, ```pacman -S gcc```
7. Modify the ...\include and ...\lib in the g++ part. Change it to installation folder and at the -lpython313 change it to the python version
8. Run the script: ```scriptname pyfile icofile```. Note that icofile is required
