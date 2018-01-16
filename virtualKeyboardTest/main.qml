import QtQuick 2.0
import QtQuick.FreeVirtualKeyboard 1.0
Rectangle {
    id: rect
    anchors.fill: parent
    color: "gray"
//    Column {
//        id: column
//        anchors.fill: parent

        Rectangle {
            id:bt1
            width: parent.width
            height: 80
//            anchors.top: parent.top
            color: "steelblue"
            Text {
                anchors.fill: parent
                text: "I am a Button"
            }
        }
        Rectangle {
            id:rect1
            width: parent.width
            height: 80
            anchors.top: bt1.bottom
            color: "white"

            TextEdit {
                anchors.fill: parent
                font.pixelSize: 30
                text: "Text"
                color: "orange"
            }

            border.color: "black"
        }
        Rectangle {
            id:rect2
            width: parent.width
            height: 80
            color: "green"
            anchors.top: rect1.bottom

            TextEdit {
                anchors.fill: parent
                font.pixelSize: 30
                text: "Text"
                color: "orange"
            }

            border.color: "black"
        }

        InputPanel {
            id: inputPanel
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            states: State {
                name: "keyboard"
                when: Qt.inputMethod.visible
                PropertyChanges {
                    target: inputPanel
                    y: parent.height - inputPanel.height
                }
            }
            transitions: Transition {
                from: ""
                to: "visible"
                reversible: true
                ParallelAnimation {
                    NumberAnimation {
                        properties: "y"
                        duration: 150
                        easing.type: Easing.InOutQuad
                    }
                }
            }
        }
//    }
}
