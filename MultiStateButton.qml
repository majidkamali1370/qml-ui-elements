import QtQuick 2.12
import QtQuick.Controls 2.12

ToolButton {
    id: root

    enum Mode {
        Menu,
        Cross,
        Plus,
        ArrowLeft,
        ArrowRight,
        Tick,
        VDot,
        HDot
    }

    property int mode: MultiStateButton.Menu
    property int duration: 100
    property color lineColor: "black"
    property real lineWidth: 4
    property real lineDistance: 7

    contentItem: Item {
        id: content
        anchors.fill: root
        anchors.margins: root.width * 0.3

        Rectangle {
            id: rect1
            radius: root.lineWidth / 2
            color: root.lineColor

            Behavior on color {
                ColorAnimation { duration: root.duration }
            }
        }

        Rectangle {
            id: rect2
            radius: root.lineWidth / 2
            color: root.lineColor

            Behavior on color {
                ColorAnimation { duration: root.duration }
            }
        }

        Rectangle {
            id: rect3
            radius: root.lineWidth / 2
            color: root.lineColor

            Behavior on color {
                ColorAnimation { duration: root.duration }
            }
        }
    }

    states: [
        State {
            name: "menu"
            when: root.mode === MultiStateButton.Menu
            changes: [
                PropertyChanges {
                    target: rect1
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2 - root.lineDistance
                },
                PropertyChanges {
                    target: rect2
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                },
                PropertyChanges {
                    target: rect3
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2 + root.lineDistance
                }
            ]
        },
        State {
            name: "cross"
            when: root.mode === MultiStateButton.Cross
            changes: [
                PropertyChanges {
                    target: rect1
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    rotation: 45
                },
                PropertyChanges {
                    target: rect2
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    opacity: 0
                },
                PropertyChanges {
                    target: rect3
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    rotation: -45
                }
            ]
        },
        State {
            name: "plus"
            when: root.mode === MultiStateButton.Plus
            changes: [
                PropertyChanges {
                    target: rect1
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    rotation: 90
                },
                PropertyChanges {
                    target: rect2
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    opacity: 0
                },
                PropertyChanges {
                    target: rect3
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    rotation: 0
                }
            ]
        },
        State {
            name: "arrowLeft"
            when: root.mode === MultiStateButton.ArrowLeft
            changes: [
                PropertyChanges {
                    target: rect1
                    width: content.width / 2
                    height: root.lineWidth
                    x: -1
                    y: content.height / 2 - root.lineWidth / 2 - root.lineWidth + 1
                    rotation: -45
                },
                PropertyChanges {
                    target: rect2
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                },
                PropertyChanges {
                    target: rect3
                    width: content.width / 2
                    height: root.lineWidth
                    x: -1
                    y: content.height / 2 + root.lineWidth / 2 - 1
                    rotation: 45
                }
            ]
        },
        State {
            name: "arrowRight"
            when: root.mode === MultiStateButton.ArrowRight
            changes: [
                PropertyChanges {
                    target: rect1
                    width: content.width / 2
                    height: root.lineWidth
                    x: rect1.width + 1
                    y: content.height / 2 - root.lineWidth / 2 - root.lineWidth + 1
                    rotation: 45
                },
                PropertyChanges {
                    target: rect2
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                },
                PropertyChanges {
                    target: rect3
                    width: content.width / 2
                    height: root.lineWidth
                    x: rect3.width + 1
                    y: content.height / 2 + root.lineWidth / 2 - 1
                    rotation: -45
                }
            ]
        },
        State {
            name: "tick"
            when: root.mode === MultiStateButton.Tick
            changes: [
                PropertyChanges {
                    target: rect1
                    width: content.width / 2
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 + root.lineWidth / 2
                    rotation: 45
                },
                PropertyChanges {
                    target: rect2
                    width: content.width
                    height: root.lineWidth
                    x: 0
                    y: content.height / 2 - root.lineWidth / 2
                    opacity: 0
                },
                PropertyChanges {
                    target: rect3
                    width: content.width
                    height: root.lineWidth
                    x: rect3.width / 5
                    y: content.height / 2 - root.lineWidth / 2
                    rotation: -45
                }
            ]
        },
        State {
            name: "vdot"
            when: root.mode === MultiStateButton.VDot
            changes: [
                PropertyChanges {
                    target: rect1
                    width: height
                    height: root.lineWidth
                    x: content.width / 2 - rect1.width / 2
                    y: content.height / 2 - root.lineWidth / 2 - root.lineDistance
                },
                PropertyChanges {
                    target: rect2
                    width: height
                    height: root.lineWidth
                    x: content.width / 2 - rect2.width / 2
                    y: content.height / 2 - root.lineWidth / 2
                },
                PropertyChanges {
                    target: rect3
                    width: height
                    height: root.lineWidth
                    x: content.width / 2 - rect3.width / 2
                    y: content.height / 2 - root.lineWidth / 2 + root.lineDistance
                }
            ]
        },
        State {
            name: "hdot"
            when: root.mode === MultiStateButton.HDot
            changes: [
                PropertyChanges {
                    target: rect1
                    width: height
                    height: root.lineWidth
                    x: content.width / 2 - 2.5 * root.lineWidth
                    y: content.height / 2 - root.lineWidth / 2
                },
                PropertyChanges {
                    target: rect2
                    width: height
                    height: root.lineWidth
                    x: content.width / 2 - rect2.width / 2
                    y: content.height / 2 - root.lineWidth / 2
                },
                PropertyChanges {
                    target: rect3
                    width: height
                    height: root.lineWidth
                    x: content.width / 2 + 1.5 * root.lineWidth
                    y: content.height / 2 - root.lineWidth / 2
                }
            ]
        }
    ]

    transitions: Transition {
        from: "*"
        to: "*"

        NumberAnimation {
            targets: [ rect1, rect2, rect3 ]
            properties: "x,y,width,height,opacity,rotation"
            duration: root.duration
        }
    }
}
