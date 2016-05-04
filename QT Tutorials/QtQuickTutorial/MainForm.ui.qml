import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: item1
    width: 640
    height: 480
    property alias mouseArea3: mouseArea3
    property alias bottomLeftRect: bottomLeftRect
    property alias mouseArea2: mouseArea2
    property alias middleRightRect: middleRightRect
    property alias mouseArea1: mouseArea1
    property alias topLeftRect: topLeftRect
    property alias icon: icon

    Image {
        id: icon
        x: 10
        y: 20
        source: "qt-logo.png"
    }

    Rectangle {
        id: topLeftRect
        width: 46
        height: 55
        color: "#00000000"
        radius: 6
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 20
        border.color: "#808080"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
    }

    Rectangle {
        id: middleRightRect
        x: 6
        y: 6
        width: 46
        height: 55
        color: "#00000000"
        radius: 6
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 10
        border.color: "#808080"
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
        }
    }

    Rectangle {
        id: bottomLeftRect
        x: 1
        y: -8
        width: 46
        height: 55
        color: "#00000000"
        radius: 6
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.left: parent.left
        border.color: "#808080"
        anchors.leftMargin: 10
        MouseArea {
            id: mouseArea3
            anchors.fill: parent
        }
    }

}
