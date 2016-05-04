import QtQuick 2.4
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.3

Item {
    id: content
    width: 400
    height: 400
    property alias button2: button2
    property alias button1: button1
    property alias rowLayout1: rowLayout1
    property alias textArea1: textArea1
    property alias columnLayout1: columnLayout1

    ColumnLayout {
        id: columnLayout1
        height: 100
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.top: parent.top
        anchors.topMargin: 12

        TextArea {
            id: textArea1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }

    RowLayout {
        id: rowLayout1
        width: 100
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 12
        anchors.right: parent.right
        anchors.rightMargin: 12

        Button {
            id: button1
            text: qsTr("Save")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: button2
            text: qsTr("Cancel")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
