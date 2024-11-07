@echo off
echo Creating a text file named mytext.txt and adding "Hello World"...
echo Hello World > mytext.txt
echo.
echo Displaying contents of mytext.txt:
type mytext.txt
echo.
echo Creating a subdirectory named backup...
mkdir backup
echo.
echo Copying mytext.txt to the backup folder...
copy mytext.txt backup\
echo.
echo Listing contents of the backup subdirectory:
dir backup
echo.
echo Deleting mytext.txt from the backup folder...
del backup\mytext.txt
echo.
echo Deleting the backup subdirectory...
rmdir backup
