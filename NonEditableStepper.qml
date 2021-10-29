import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import "."

RowLayout {
    id: root

    property int currentIndex: 0
    property int stepperCount: 0

    signal stepsCompleted();

    function addStep(title, subtitle) {

        if(stepperCount > 0)
            compLine.createObject(root,
                                  {
                                      stepperCurrentIndex: Qt.binding(function() { return currentIndex }),
                                      position: stepperCount - 1
                                  })

        var obj = compStep.createObject(root,
                                        {
                                            title: title,
                                            subtitle: subtitle,
                                            index: stepperCount,
                                            parentCurrentIndex: Qt.binding(function() { return currentIndex })
                                        })
        stepperCount++
    }

    spacing: 8

    Component {
        id: compLine

        Rectangle {
            property int stepperCurrentIndex: 0
            property int position: 0

            Layout.alignment: Qt.AlignVCenter
            Layout.fillWidth: true
            height: 2
            color: stepperCurrentIndex > position ? Material.primary : "#dcdcdc"

            Behavior on color {
                ColorAnimation { duration: 200 }
            }
        }
    }

    Component {
        id: compStep

        StepperStep {
        }
    }
}
