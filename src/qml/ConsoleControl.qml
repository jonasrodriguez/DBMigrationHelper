import QtQuick 2.11
import QtQuick.Controls 2.4

Item {
    TextArea {
        height: parent.height * 0.9
        width: parent.width * 0.9
        anchors.centerIn: parent

        placeholderText: qsTr("Enter description")
    }
}
