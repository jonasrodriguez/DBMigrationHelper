#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <memory>

#include "BusinessLogic.h"
#include "Dashboard.h"

#include <QDebug>
#include <QThread>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QThread businessThread;
    std::shared_ptr<BusinessLogic> logic(new BusinessLogic);

    Dashboard dashboard(nullptr, logic);
    engine.rootContext()->setContextProperty("dashboardLogic", &dashboard);

    logic->moveToThread(&businessThread);
    businessThread.start();

    engine.addImportPath( "qrc:/" );

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QObject::connect(&app, &QCoreApplication::aboutToQuit,
        [&]() { businessThread.exit(); });

    return app.exec();
}
