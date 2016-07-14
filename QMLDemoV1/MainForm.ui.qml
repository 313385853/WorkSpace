import QtQuick 2.5

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        Image {
            id: image1
            x: 84
            y: 64
            width: 100
            height: 100
            source: "../ee.png"
        }
    }

    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }
}
