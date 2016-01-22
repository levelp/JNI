QT       -= core gui

TARGET = JNI_DLL
TEMPLATE = lib
JAVA_HOME = ${JAVA_HOME}

INCLUDEPATH += $$JAVA_HOME/include
INCLUDEPATH += $$JAVA_HOME/include/win32
#LIBS += $$JAVA_HOME/jre/lib/$$ARCH/server/libjvm.so

DEFINES += JNI_DLL_LIBRARY

SOURCES += \
    JniTest.cpp

HEADERS += JniTest.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
