import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

Item {
    id: root

    property alias placeHolder: lbl.text
    property alias textField: tf

    height: tf.height + 14

    Label {
        id: lbl
        font.pixelSize: tf.focus ? 12 : tf.font.pixelSize
        anchors.bottom: tf.bottom
        anchors.bottomMargin: tf.focus ? tf.height : tf.font.pixelSize
        anchors.left: parent.left
        anchors.right: parent.right
        color: Material.accent
        opacity: tf.text != "" ? 0 : 1

        Behavior on opacity {
            NumberAnimation { duration: 200 }
        }

        Behavior on font.pixelSize {
            NumberAnimation { duration: 200 }
        }

        Behavior on anchors.bottomMargin {
            NumberAnimation { duration: 200 }
        }
    }

    TextField {
        id: tf
        font.pixelSize: 20
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
