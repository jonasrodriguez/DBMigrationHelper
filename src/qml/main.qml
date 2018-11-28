import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("DB Migration Helper")

    Dashboard {
        anchors.fill: parent
    }
}
