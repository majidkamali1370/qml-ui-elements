import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

MenuItem {
    id: root

    property int count: 0

    contentItem: Item {
        anchors.fill: parent

        RowLayout {
            anchors.fill: parent
            layoutDirection: Qt.application.layoutDirection
            spacing: 0

            Label {
                Layout.fillHeight: true
                Layout.fillWidth: true
                verticalAlignment: Qt.AlignVCenter

                Layout.margins: 10
                text: root.text
                font.pixelSize: 16
                elide: Text.ElideRight
            }

            Item {
                id: itm
                Layout.fillHeight: true
                Layout.minimumWidth: parent.height
                Layout.maximumWidth: parent.height
                visible: count != 0

                Rectangle {
                    anchors.centerIn: parent
                    width: parent.width * 0.6
                    height: width
                    radius:  width / 2
                    color: Material.accent

                    Text {
                        anchors.centerIn: parent
                        color: "white"
                        font.family: "Arial"
                        font.pixelSize: 12
                        text: count
                    }
                }
            }
        }
    }
}
