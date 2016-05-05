#include <QApplication>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QtQuick/QQuickView>
#include <Qt3DInput/QInputAspect>
#include <Qt3DQuick/QQmlAspectEngine>
#include <QTimer>
#include "cube.h"

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    qmlRegisterType<Demo>("qtvulkan", 1, 0, "QtVulkan");

    QQmlApplicationEngine view("main.qml");

    return app.exec();
};
