#!/bin/bash
# My first script
echo ***************************
echo ***** tutorialCreator *****
echo ***************************
echo This shell script creates
echo Folder, CMakeLists.txt and
echo *.cpp files for you.

echo Please specify the name of your new Project.
echo Press Ctr + C to abort

read PROJECT

mkdir $PROJECT
cd $PROJECT

touch CMakeLists.txt

echo "cmake_minimum_required(VERSION 2.8)" >> CMakeLists.txt
echo "project( $PROJECT )" >> CMakeLists.txt
echo "find_package( OpenCV REQUIRED )" >> CMakeLists.txt
echo "include_directories( \${OpenCV_INCLUDE_DIRS} )" >> CMakeLists.txt
echo "add_executable( $PROJECT $PROJECT.cpp )" >> CMakeLists.txt
echo "target_link_libraries( $PROJECT \${OpenCV_LIBS} )" >> CMakeLists.txt

touch $PROJECT.cpp
