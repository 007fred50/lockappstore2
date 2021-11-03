import QtQuick 2.0
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

Column{
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    Loader {
        id: howToPageLoader
    }

    Column{
        id: howto
        Text{
            id: howToUseIt
            text: "How to use it"
            font.pixelSize: root.width * 0.09
        }

        Rectangle{
            width: 200
            height: howToUseIt.height

            Text{
                id: aboutText1
                width: 50
                height: 100
                color: "green"
                text: "Just hit Download button then\nGoto Download and Install the App"
                font.pixelSize: root.width * 0.04
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: howToUseIt.height

            Text{
                id: aboutText5
                width: 50
                height: 100
                text: ".click file is binary\nMobile language (No Source Code)"
                font.pixelSize: root.width * 0.04
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: howToUseIt.height

            Text{
                id: aboutText4
                width: 50
                height: 100
                text: "If you have any freeback\njust write to me 007fred50@gmail.com"
                font.pixelSize: root.width * 0.035
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: howToUseIt.height

            Text{
                id: aboutText2
                width: 50
                height: 100
                text: "How do you upload an App?\nGo to this homesite  "
                font.pixelSize: root.width * 0.04
                maximumLineCount: 3

            }
        }

        Rectangle{
            width: 200
            height: howToUseIt.height

            Text{
                id: aboutText3
                width: 50
                height: 100
                text: "http://lockappstore.people8people.com:8080"
                font.pixelSize: root.width * 0.03
                maximumLineCount: 3

            }
        }

        Button{
            text: "Next Page"
            width: howToUseIt.width
            onClicked: {
                howto.visible = false
                howToPageLoader.source = "appsList.qml"
            }
        }
    }

}

