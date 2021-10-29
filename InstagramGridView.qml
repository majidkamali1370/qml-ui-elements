import QtQuick 2.0
import QtQuick.Layouts 1.1

Flickable {
    id: root

    property alias model: repeater.model

    anchors.fill: parent
    contentHeight: grid.implicitHeight

    GridLayout {
        id: grid
        columns: 3
        anchors.left: parent.left
        anchors.right: parent.right
        rowSpacing: 0
        columnSpacing: 0

        Repeater {
            id: repeater
            model: 99

            Rectangle {
                Layout.columnSpan: parseInt((model.index - 1) % (grid.columns * 2)) === 0 ? 2 : 1 // <-- changing this formula changes layout
                Layout.rowSpan: Layout.columnSpan
                Layout.preferredWidth: grid.width / grid.columns * Layout.columnSpan
                Layout.preferredHeight: Layout.preferredWidth
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.2)
                border.width: 1
                border.color: Qt.rgba(Math.random(), Math.random(), Math.random())
            }
        }
    }
}
