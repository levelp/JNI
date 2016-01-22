SET PATH=D:\Qt\5.5\mingw492_32\bin;D:\Qt\Tools\mingw492_32\bin;%PATH%

javac -encoding utf8 JniTest.java
javah -classpath . JniTest

qmake
mingw32-make.exe

javac -encoding utf8 -classpath . ShowJniTest.java
java -Djava.library.path=release ShowJniTest
