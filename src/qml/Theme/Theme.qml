pragma Singleton

import QtQuick 2.8

QtObject {

    readonly property color mainColor: "#17a81a"

    readonly property color inputReadonly: "lightgray"

    readonly property color blue: "#2d548b"
    readonly property color gray: "#b2b1b1"
    readonly property color lightGray: "#dddddd"
    readonly property color light: "#ffffff"
    readonly property color dark: "#222222"
    readonly property color mainColorDarker: Qt.darker(mainColor, 1.5)

    property font labelFont: Qt.font({family: 'PT Mono',
                                      bold: true,
                                      pixelSize: 14})

    property font subLabelFont: Qt.font({family: 'PT Mono',
                                      bold: true,
                                      pixelSize: 12})


    property font insertFont: Qt.font({family: 'PT Mono',
                                      pixelSize: 14})
}
