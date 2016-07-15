import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQml 2.2
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
//            Qt.quit();
            console.log("dianjilezhuomian ")
            console.log(lll.currentIndex)
        }


    }

        ToolButton{
            width: 200
            height: 100
            contentItem: Image {
                id: enen
                fillMode: Image.Pad
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                source: "ee.png"
            }

        }

        Tumbler{
            id:tt
            model: 20
            visibleItemCount: 5
            anchors.horizontalCenter: parent.horizontalCenter
            wheelEnabled: true

        }

        /*Rectangle {
        width: 240
        height: 300
        color: "white"
        ListView {
            id:lll
        anchors.fill: parent
        anchors.margins: 20
        clip: true
        model: 100
        delegate: numberDelegate
        spacing: 5
        highlight: highlightComponent
        focus: true
        }

        Component {
        id: highlightComponent
        Item {
            id: hh
            width: ListView.view.width
            height: ListView.view.currentItem.height
            y: ListView.view.currentItem.y
            Behavior on y {
                SequentialAnimation {
                    PropertyAnimation { target: highlightRectangle; property: "opacity";
                        NumberAnimation { duration: 1 }
                        }
                     PropertyAnimation { target: highlightRectangle; property: "opacity";
                         }



                }


            }

        }


        Rectangle {
            id: highlightRectangle
            anchors.fill: parent
            color: "lightGreen"
        }
        }
        Component {
        id: numberDelegate
        Item {
        width: 40
        height: 40
        Text {
        anchors.centerIn: parent
        font.pixelSize: 10
        text: index
        }
        }
        }
        }*/
        Rectangle {
        width: 80
        height: 300
        color: "white"
        ListView {
        anchors.fill: parent
        anchors.margins: 20
        clip: true
        model: 20
        delegate: numberDelegate
        spacing: 5

        header: headerComponent
        footer: footerComponent
        }
        Component {
        id: headerComponent
        Rectangle {
        width: 40
        height: 20
        color: "yellow"
        }
        }
        Component {
        id: footerComponent
        Rectangle {
        width: 40
        height: 20
        color: "red"
        }
        }
        Component {
        id: numberDelegate
        Rectangle {
        width: 40
        height: 40
        color: "lightGreen"
        Text {
        anchors.centerIn: parent
        font.pixelSize: 10
        text: index
        }
        }
        }
        }


}
