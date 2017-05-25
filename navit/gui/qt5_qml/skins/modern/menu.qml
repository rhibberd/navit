import QtQuick.Layouts 1.0
import QtQuick 2.2

Rectangle {
    id: rectangle
    visible: true
    height: 480
    color: "#000000"

    Rectangle {
        id: menuArea
        color: "#1e1b18"
        width: parent.width
        y: topBar.height
        height: rectangle.height - ( topBar.height + bottomBar.height )
        
        Loader {
            id: menucontent
            width: parent.width
            height: parent.height
            Component.onCompleted: menucontent.source = "MainMenu.qml"
        }
    }

    Rectangle {
        id: bottomBar
        width: parent.width
        height: 64
        color: "#1e1b18"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        MainButton {
            id: mainButton3
            x: 380
            y: 220
            width: 260
            height: 56
            radius: 1
            text: "Map"
            anchors.right: parent.right
            anchors.rightMargin: 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            icon: "icons/appbar.map.svg"
            onClicked: {
                mainMenu.state = ''
                mainMenu.source = ""
            }

        }
    }

    Rectangle {
        id: topBar
        width: parent.width
        height: 80
        color: "#1e1b18"
        anchors.top: parent.top
    }

}