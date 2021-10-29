import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import "."

RowLayout {
    id: root

    property alias title: titleTxt.text
    property alias subtitle: subtitleTxt.text
    property int index
    property int parentCurrentIndex
    property int stepState: index < parentCurrentIndex ? -1 :
                            index > parentCurrentIndex ?  1 :
                                                          0   // -1 = past, 0 = current, 1 = future

    height: 36
    spacing: 8

    Rectangle {
        height: 24
        width: 24
        radius: 12
        Layout.alignment: Qt.AlignVCenter
        color: root.stepState == 1 ? "#dcdcdc" : Material.primary

        Behavior on color {
            ColorAnimation { duration: 200 }
        }

        Text {
            anchors.centerIn: parent
            font.pixelSize: stepState >= 0 ? 12 : 16
            color: "white"
            text: stepState >= 0 ? index + 1 : MaterialDesignIcons.mdiCheck
            font.family: stepState >= 0 ? "Arial"
                                        : "Material Design Icons"
        }
    }

    ColumnLayout {
        height: 26
        Layout.fillWidth: true
        Layout.fillHeight: true
        spacing: 2

        Label {
            id: titleTxt
            font.pixelSize: 16
            text: "title text"
        }
        Label {
            id: subtitleTxt
            font.pixelSize: 12
            text: "subtitle text"
            color: "#888"
            visible: text.trim() != ""
        }
    }
}
