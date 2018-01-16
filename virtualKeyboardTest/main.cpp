#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick/QQuickView>
#include <QDebug>
#include <QFontDatabase>
#include <QQuickView>

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("freevirtualkeyboard"));
    QGuiApplication app(argc, argv);

    QFontDatabase FontDatabase;
    FontDatabase.addApplicationFont(":/DejaVuSans.ttf");
    app.setFont(QFont("DejaVu Sans"));
    app.setObjectName("QGuiApplication");

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:/main.qml"));
    view.setHeight(680);
    view.setWidth(1280);
    view.show();

    return app.exec();
}
