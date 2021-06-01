QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets serialport

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    mediatorgui.cpp \
    moduleinfo.cpp \
    serialcom.cpp \
    settings.cpp \
    timeouttimer.cpp

HEADERS += \
    mainwindow.h \
    mediatorgui.h \
    moduleinfo.h \
    serialcom.h \
    settings.h \
    timeouttimer.h

FORMS += \
    mainwindow.ui

DEFINES += COMPANY_NAME='"\\\"MIEE\\\""' \
           PRODUCT_NAME='"\\\"WaveAnalyzer\\\""'

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
