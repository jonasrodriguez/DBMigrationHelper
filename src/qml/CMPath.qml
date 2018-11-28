import QtQuick 2.0
import QtQuick.Controls 2.4

import Theme 1.0

Rectangle {

    color: "transparent"
    border.width: 1

    Text {
        id: pathLabel

        width: parent.width * 0.15

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: width / 4

        font: Theme.labelFont

        text: qsTr("CM Path")
    }

    Rectangle {
        id: pathArea
        width: parent.width * 0.65
        height: parent.height * 0.7

        anchors.left: pathLabel.right
        anchors.verticalCenter: parent.verticalCenter

        color: "grey"
        border.width: 1

        TextInput {
            width: parent.width * 0.98
            height: parent.height * 0.98
            anchors.left: parent.left
            anchors.leftMargin: height / 2
            verticalAlignment: Text.AlignVCenter

            font: Theme.insertFont
            text: "C:\\Git\\archer\\TOP"
        }
    }

    Button {

        text: qsTr("Go")

        height: pathArea.height * 0.7
        width: height * 2

        anchors.left: pathArea.right
        anchors.leftMargin: height
        anchors.verticalCenter: parent.verticalCenter
    }
}
