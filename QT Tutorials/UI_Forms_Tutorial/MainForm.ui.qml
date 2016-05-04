import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480
    property alias tableView1: tableView1

    SplitView {
        id: splitView1
        anchors.fill: parent


        TabView {
            id: tabView1
            width: 360
            height: 300

            Tab {
                id: tab1
                title: "Customer Settings"
                source: "Settings.qml"
            }

            Tab {
                id: tab2
                x: 9
                y: 9
                title: "Customer Notes"
                source: "Notes.qml"
            }

            Tab {
                id: tab3
                x: 4
                y: 9
                title: "Customer History"
                source: "HistoryTableView.qml"
            }
        }
        TableView1 {
            id: tableView1
            width: 343
            height: 250
        }
    }

}
