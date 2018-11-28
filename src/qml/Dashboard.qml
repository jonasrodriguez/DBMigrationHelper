import QtQuick 2.0

Item {
    CMPath {
        id: pathArea

        width: parent.width
        height: parent.height * 0.1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: height / 2
    }

    CurrentVersion {
        id: versionArea
        width: parent.width / 2
        height: parent.height * 0.3

        anchors.top: pathArea.bottom
        anchors.left: parent.left
    }

    NewVersion {
        width: parent.width / 2
        height: parent.height * 0.3

        anchors.top: pathArea.bottom
        anchors.right: parent.right
    }

    Rectangle {
        id: controlsArea
        width: parent.width
        height: parent.height * 0.1
        anchors.top: versionArea.bottom
        anchors.left: parent.left
        border.width: 1
    }
    ConsoleControl {
        anchors.top: controlsArea.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
