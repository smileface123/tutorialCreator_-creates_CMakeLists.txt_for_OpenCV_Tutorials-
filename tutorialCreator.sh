#!/bin/bash
# My first script
PROJECT="Test"

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
