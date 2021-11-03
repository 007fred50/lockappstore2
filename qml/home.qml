import QtQuick 2.0
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

Column{
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    Loader {
        id: homePageLoader
    }

    Column{
        id: home

        Text{
            id: lockappstoreID
            text: "Lock App Store"
            font.pixelSize: root.width * 0.09
        }

        Rectangle{
            width: 200
            height: lockappstoreID.height

            Text{
                id: infoText1
                width: 50
                height: 100
                text: "Why use this app?\nSo them there will make"
                font.pixelSize: root.width * 0.04
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: lockappstoreID.height

            Text{
                id: infoText2
                width: 50
                height: 100
                text: "A app private, not give source code"
                font.pixelSize: root.width * 0.04
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: lockappstoreID.height

            Text{
                id: infoText3
                width: 50
                height: 100
                text: "You are Welcome to use this app!"
                font.pixelSize: root.width * 0.04
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: lockappstoreID.height

            Text{
                id: infoText4
                width: 50
                height: 100
                text: "There is no money In this App Store"
                font.pixelSize: root.width * 0.035
                maximumLineCount: 3

            }
        }

        Button{
            width: lockappstoreID.width
            text: "Next Page"
            onClicked: {
                home.visible = false
                homePageLoader.source = "howto.qml"
            }
        }
    }

}

