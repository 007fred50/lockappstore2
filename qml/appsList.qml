import QtQuick 2.0
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

Column{
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    Loader {
        id: appListPageLoader
    }

    property var downFiles1: ""
    property var downFiles2: ""
    property var downFiles3: ""
    property var downFiles4: ""
    property var downFiles5: ""
    property var downFiles6: ""
    property var downFiles7: ""
    property var downFiles8: ""
    property var downFiles9: ""
    property var downFiles10: ""


    property var responseTextGet: ""
    property var howmanyApps: ""

    function searchFunc(){
        searchInternetParm("http://lockappstore.people8people.com:8080/clickAppLoadFiles.php", "search="+searchText.text)
    }

    function downloadfile(files){
        Qt.openUrlExternally("http://lockappstore.people8people.com:8080/clickAppLoadFiles.php?DownloadClickFiles=" + files);
    }

    function updateCont(){
        howmanyApps = responseTextGet.split("_____");

        for (var i = 0; i < howmanyApps.length-1; i++)  {
            var explodehowmanyApps = howmanyApps[i].split("__");
            //console.log(i)
            //console.log(i + " - " + explodehowmanyApps[2])

            if(i === 0){
                console.log("Number 1")
                nameofapp1.text = explodehowmanyApps[1]
                idPhotoApp1.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles1 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload1.text = explodehowmanyApps[4]
                totalVersion2.text = explodehowmanyApps[5]
            }

            if(i === 1){
                console.log("Number 2")
                nameofapp2.text = explodehowmanyApps[1]
                idPhotoApp2.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles2 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload2.text = explodehowmanyApps[4]
                totalVersion2.text = explodehowmanyApps[5]
            }

            if(i === 2){
                console.log("Number 3")
                nameofapp3.text = explodehowmanyApps[1]
                idPhotoApp3.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles3 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload3.text = explodehowmanyApps[4]
                totalVersion3.text = explodehowmanyApps[5]
            }

            if(i === 3){
                console.log("Number 4")
                nameofapp4.text = explodehowmanyApps[1]
                idPhotoApp4.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles4 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload4.text = explodehowmanyApps[4]
                totalVersion4.text = explodehowmanyApps[5]
            }


            if(i === 4){
                console.log("Number 5")
                nameofapp5.text = explodehowmanyApps[1]
                idPhotoApp5.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles5 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload5.text = explodehowmanyApps[4]
                totalVersion5.text = explodehowmanyApps[5]
            }

            if(i === 5){
                console.log("Number 6")
                nameofapp6.text = explodehowmanyApps[1]
                idPhotoApp6.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles6 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload6.text = explodehowmanyApps[4]
                totalVersion6.text = explodehowmanyApps[5]
            }

            if(i === 6){
                console.log("Number 7")
                nameofapp7.text = explodehowmanyApps[1]
                idPhotoApp7.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles7 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload7.text = explodehowmanyApps[4]
                totalVersion7.text = explodehowmanyApps[5]
            }

            if(i === 7){
                console.log("Number 8")
                nameofapp8.text = explodehowmanyApps[1]
                idPhotoApp8.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles8 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload8.text = explodehowmanyApps[4]
                totalVersion8.text = explodehowmanyApps[5]
            }


            if(i === 8){
                console.log("Number 9")
                nameofapp9.text = explodehowmanyApps[1]
                idPhotoApp9.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles9 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload9.text = explodehowmanyApps[4]
                totalVersion9.text = explodehowmanyApps[5]
            }

            if(i === 9){
                console.log("Number 10")
                nameofapp10.text = explodehowmanyApps[1]
                idPhotoApp10.source = "http://lockappstore.people8people.com:8080/" + explodehowmanyApps[2]
                downFiles10 = explodehowmanyApps[3] + "&id=" + explodehowmanyApps[0]
                totalDownload10.text = explodehowmanyApps[4]
                totalVersion10.text = explodehowmanyApps[5]
            }

            if(i >= 0){
                idApp1.visible = true
            }else{

                idApp1.visible = false
            }

            if(i >= 1){
                idApp2.visible = true
            }else{

                idApp2.visible = false
            }

            if(i >= 2){
                idApp3.visible = true
            }else{

                idApp3.visible = false
            }

            if(i >= 3){
                idApp4.visible = true
            }else{

                idApp4.visible = false
            }

            if(i >= 4){
                idApp5.visible = true
            }else{

                idApp5.visible = false
            }

            if(i >= 5){
                idApp6.visible = true
            }else{

                idApp6.visible = false
            }

            if(i >= 6){
                idApp7.visible = true
            }else{

                idApp7.visible = false
            }

            if(i >= 7){
                idApp8.visible = true
            }else{

                idApp8.visible = false
            }

            if(i >= 8){
                idApp9.visible = true
            }else{

                idApp9.visible = false
            }

            if(i >= 9){
                idApp10.visible = true
            }else{

                idApp10.visible = false
            }
        }
    }

    function searchInternetParm(webhost, paramsmenter){
        var http = new XMLHttpRequest()
        var url = webhost;
        var params = paramsmenter;
        http.open("POST", url, true);

         // Send the proper header information along with the request
        http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        http.setRequestHeader("Content-length", params);
        http.setRequestHeader("Connection", "close");

        http.onreadystatechange = function() { // Call a function when the state changes.
            //console.log(http.responseText)
            responseTextGet = http.responseText
            updateCont()
        }

        http.send(params);
    }

    Column{
        id: applist

        property var aNumber: 0

        Timer {
            id: updateTimer
            interval: 250; running: true; repeat: true
            onTriggered: {
                searchInternetParm("http://lockappstore.people8people.com:8080/clickAppLoadFiles.php", "search=")
                updateTimer.stop()
            }
        }

        ScrollView{
            width: root.width * 0.9
            height: root.height * 0.9

            Column{
                Rectangle{
                    width: parent.width
                    height: 20
                }

                Text{
                    id: howToUseIt
                    text: "Locked App Store"
                    font.pixelSize: root.width * 0.09
                }
                Rectangle{
                    width: parent.width
                    height: 20
                }
                Row{
                    TextField {
                        id: searchText
                        placeholderText: ("Enter Search Here")
                    }
                    Button{
                        text: "Search"
                        onClicked: searchFunc()
                    }
                }
                Rectangle{
                    width: parent.width
                    height: 20
                }

                Rectangle{
                    id: idApp1
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp1
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp1.width - idPhotoApp1.width - nameofapp1.width - totalDownloadtext1.width
                            }

                            Row {
                                Text{
                                    id: nameofapp1
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles1)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp1.width - idPhotoApp1.width - nameofapp.width - totalDownloadtext1.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext1
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload1
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion1
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp2
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp2
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp2.width - idPhotoApp2.width - nameofapp2.width - totalDownloadtext2.width
                            }

                            Row {
                                Text{
                                    id: nameofapp2
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles2)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp2.width - idPhotoApp2.width - nameofapp.width - totalDownloadtext2.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext2
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload2
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion2
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp3
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp3
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp3.width - idPhotoApp3.width - nameofapp3.width - totalDownloadtext3.width
                            }

                            Row {
                                Text{
                                    id: nameofapp3
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles3)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp3.width - idPhotoApp3.width - nameofapp.width - totalDownloadtext3.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext3
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload3
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion3
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp4
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp4
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp4.width - idPhotoApp4.width - nameofapp4.width - totalDownloadtext4.width
                            }

                            Row {
                                Text{
                                    id: nameofapp4
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles4)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp4.width - idPhotoApp4.width - nameofapp.width - totalDownloadtext4.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext4
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload4
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion4
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp5
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp5
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp5.width - idPhotoApp5.width - nameofapp5.width - totalDownloadtext5.width
                            }

                            Row {
                                Text{
                                    id: nameofapp5
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles5)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp5.width - idPhotoApp5.width - nameofapp.width - totalDownloadtext5.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext5
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload5
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion5
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp6
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp6
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp6.width - idPhotoApp6.width - nameofapp6.width - totalDownloadtext6.width
                            }

                            Row {
                                Text{
                                    id: nameofapp6
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles6)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp6.width - idPhotoApp6.width - nameofapp.width - totalDownloadtext6.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext6
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload6
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion6
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp7
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp7
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp7.width - idPhotoApp67.width - nameofapp7.width - totalDownloadtext7.width
                            }

                            Row {
                                Text{
                                    id: nameofapp7
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles7)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp7.width - idPhotoApp7.width - nameofapp.width - totalDownloadtext7.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext7
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload7
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion7
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp8
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp8
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp8.width - idPhotoApp8.width - nameofapp8.width - totalDownloadtext8.width
                            }

                            Row {
                                Text{
                                    id: nameofapp8
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles8)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp8.width - idPhotoApp8.width - nameofapp.width - totalDownloadtext8.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext8
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload8
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion8
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp9
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp9
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp9.width - idPhotoApp9.width - nameofapp9.width - totalDownloadtext9.width
                            }

                            Row {
                                Text{
                                    id: nameofapp9
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles9)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp9.width - idPhotoApp9.width - nameofapp.width - totalDownloadtext9.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext9
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload9
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalVersion9
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }

                Rectangle{
                    width: 1
                    height: 10
                }

                Rectangle{
                    id: idApp10
                    width: parent.width
                    height: root.height * 0.15

                    Row{
                        width: parent.width
                        Image {
                            id: idPhotoApp10
                            width: parent.width * 0.3
                            height: parent.height * 1
                            source: ""
                        }
                        Rectangle{
                            width: 10
                            height: idApp1.height
                        }

                        Column{
                            Rectangle{
                                height: 10
                                width: idApp10.width - idPhotoApp10.width - nameofapp10.width - totalDownloadtext10.width
                            }

                            Row {
                                Text{
                                    id: nameofapp10
                                    text: "Name Of App?"
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Button{
                                    text: "Down"
                                    onClicked: downloadfile(downFiles10)
                                }
                            }

                            Rectangle{
                                height: 20
                                width: idApp10.width - idPhotoApp10.width - nameofapp.width - totalDownloadtext10.width
                            }

                            Row{
                                Text{
                                    id: totalDownloadtext10
                                    text: "Total Download"
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: totalDownload10
                                    text: ""
                                    font.pixelSize: root.width * 0.025
                                }
                            }

                            Row{
                                Text{
                                    text: "Version: "
                                    font.pixelSize: root.width * 0.025
                                }

                                Rectangle{
                                    width: 20
                                    height: 1
                                }

                                Text{
                                    id: total10
                                    text: "1"
                                    font.pixelSize: root.width * 0.025
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

