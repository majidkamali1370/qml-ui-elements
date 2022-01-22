# Qml UI Elements

Some useful qml ui elements. Items don't have any dependencies other than Qt qml modules (unless mentioned otherwise). You can use each file independently.

## CounterMenuItem.qml

A `MenuItem` item with a counter. Does not show zero value.

![CounterMenuItem](images/CounterMenuItem.png)

## InstagramGridView.qml

A `Flickable` item with an inner `Repeater`. `model` property is exposed but unfortunately `delegate` property is not exposed (yet). Suitable for image/video collection.

![InstagramGridView](images/InstagramGridView.gif) ![InstagramGridView](images/InstagramGridView2.gif)

## MaterialDesignIcons.qml

*Dependencies :* `qmldir`

Material design icons collection. Based on version 2.0.46. User must have material-design-icons font installed. This is a singleton qml file (Don't forget to pick `qmldir` file with this one).

![MaterialDesignIcons](images/MaterialDesignIcons.png)

## MaterialTextField.qml

A material design `TextField`.

![MaterialTextField](images/MaterialTextField.gif)

## MultiStateButton

A `ToolButton` with multiple states.

![MultiStateButton](images/MultiStateButton.gif)

## NonEditableStepper.qml

*Dependencies :* `MaterialDesignIcons.qml`, `StepperStep.qml`

A material Stepper without mouse (touch) interaction. Current step is determined by `currentIndex` property.

![NonEditableStepper](images/NonEditableStepper.gif)

## RoundImage.qml

Yet another Round image :) but with border and border placement properties.

![RoundImage](images/RoundImage.gif)
