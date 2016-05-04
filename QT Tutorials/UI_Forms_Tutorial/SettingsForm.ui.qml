import QtQuick 2.4
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.3

Item {
    id: content
    width: 400
    height: 400
    property alias form: form
    property alias cancel: cancel
    property alias save: save
    property alias textField3: textField3
    property alias label1: label1
    property alias textField2: textField2
    property alias textField1: textField1
    property alias label4: label4
    property alias label3: label3
    property alias label2: label2
    property alias gridLayout1: gridLayout1

    GridLayout {
        id: gridLayout1
        height: 100
        rows: 4
        columns: 3
        columnSpacing: 8
        rowSpacing: 8
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.top: parent.top
        anchors.topMargin: 12


        Label {
            id: label2
            text: qsTr("Title")
        }


        Label {
            id: label3
            text: qsTr("First Name")
        }


        Label {
            id: label4
            text: qsTr("Last Name")
        }


        ComboBox {
            id: form
            activeFocusOnPress: false
        }


        TextField {
            id: textField1
            placeholderText: qsTr("First Name")
        }


        TextField {
            id: textField2
            placeholderText: qsTr("Last Name")
        }


        Label {
            id: label1
            text: qsTr("Customer ID")
        }

        TextField {
            id: textField3
            Layout.fillWidth: true
            Layout.columnSpan: 3
            placeholderText: qsTr("Customer ID")
        }
    }

    RowLayout {
        id: rowLayout1
        width: 100
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 12

        Button {
            id: save
            text: qsTr("Save")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: cancel
            text: qsTr("Cancel")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
