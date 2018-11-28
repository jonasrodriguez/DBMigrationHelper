import QtQuick 2.7
import Theme 1.0

Item {
    Item {
        id: versionLabel

        anchors.top: parent.top
        anchors.left: parent.left

        height: parent.height / 5
        width: parent.width

        Text {
            text: qsTr("Current DB Version")
            font: Theme.labelFont
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: parent.height * 1.5
        }
    }

    Column {
        height: parent.height - versionLabel.height
        width: parent.width
        anchors.top: versionLabel.bottom
        anchors.left: parent.left


        property real rowHeight: height / 3
        property real rowWidth: width * 0.9

        spacing: 2

        Row {
            height: parent.rowHeight
            width: parent.rowWidth
            spacing: 2

            Text {
                height: parent.height
                width: parent.width / 3
                leftPadding: height / 3
                verticalAlignment: Text.AlignVCenter

                font: Theme.subLabelFont
                text: qsTr("Version")
            }
            Rectangle {
                height: parent.height * 0.7
                width: parent.width * 0.2
                anchors.verticalCenter: parent.verticalCenter

                radius: 5
                color: Theme.inputReadonly
            }
        }
        Row {
            height: parent.rowHeight
            width: parent.rowWidth
            spacing: 2

            Text {
                height: parent.height
                width: parent.width / 3
                leftPadding: height / 3
                verticalAlignment: Text.AlignVCenter

                font: Theme.subLabelFont
                text: qsTr("Subversion")
            }
            Rectangle {
                height: parent.height * 0.7
                width: parent.width * 0.2
                anchors.verticalCenter: parent.verticalCenter

                radius: 5
                color: Theme.inputReadonly
            }
        }
        Row {
            height: parent.rowHeight
            width: parent.rowWidth
            spacing: 2

            Text {
                height: parent.height
                width: parent.width / 3
                leftPadding: height / 3
                verticalAlignment: Text.AlignVCenter

                font: Theme.subLabelFont
                text: qsTr("Version Label")
            }
            Rectangle {
                height: parent.height * 0.7
                width: parent.width * 0.6
                anchors.verticalCenter: parent.verticalCenter

                radius: 5
                color: Theme.inputReadonly
            }
        }
    }
}
