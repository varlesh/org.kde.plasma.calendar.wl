import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

Item {

    property string cfg_icon: plasmoid.configuration.icon
    property alias cfg_dayFontSize: dayFontSize.value
    property alias cfg_dayHorizontalPosition: dayHorizontalPosition.value
    property alias cfg_dayVerticalPosition: dayVerticalPosition.value
    property alias cfg_monthFontSize: monthFontSize.value
    property alias cfg_monthHorizontalPosition: monthHorizontalPosition.value
    property alias cfg_monthVerticalPosition: monthVerticalPosition.value

    
    GridLayout {
        columns: 2
        
        Label {
            Layout.row: 0
            Layout.column: 0
            text: i18n("Icon")
            }
        IconPicker {
            Layout.row: 0
            Layout.column: 1
            currentIcon: cfg_icon
            defaultIcon: "mini-calendar-widget"
            onIconChanged: cfg_icon = iconName
            enabled: true
            }
        
        Label {
            Layout.row: 1
            Layout.column: 0
            text: i18n('Day font size:')
        }
        Slider {
            Layout.row: 1
            Layout.column: 1
            id: dayFontSize
            stepSize: 1
            minimumValue: 2
            maximumValue: 100
            Layout.fillWidth: true
        }
        
        Label {
            Layout.row: 2
            Layout.column: 0
            text: i18n('Day horizontal position:')
        }
        Slider {
            Layout.row: 2
            Layout.column: 1
            id: dayHorizontalPosition
            stepSize: 1
            minimumValue: -100
            maximumValue: 100
            Layout.fillWidth: true
        }
        
        Label {
            Layout.row: 3
            Layout.column: 0
            text: i18n('Day vertical position:')
        }
        Slider {
            Layout.row: 3
            Layout.column: 1
            id: dayVerticalPosition
            stepSize: 1
            minimumValue: -100
            maximumValue: 100
            Layout.fillWidth: true
        }
        
        Label {
            Layout.row: 4
            Layout.column: 0
            text: i18n('Month font size:')
        }
        Slider {
            Layout.row: 4
            Layout.column: 1
            id: monthFontSize
            stepSize: 1
            minimumValue: 2
            maximumValue: 100
            Layout.fillWidth: true
        }
        
        Label {
            Layout.row: 5
            Layout.column: 0
            text: i18n('Month horizontal position:')
        }
        Slider {
            Layout.row: 5
            Layout.column: 1
            id: monthHorizontalPosition
            stepSize: 1
            minimumValue: -100
            maximumValue: 100
            Layout.fillWidth: true
        }
        
        Label {
            Layout.row: 6
            Layout.column: 0
            text: i18n('Month vertical position:')
        }
        Slider {
            Layout.row: 6
            Layout.column: 1
            id: monthVerticalPosition
            stepSize: 1
            minimumValue: -100
            maximumValue: 100
            Layout.fillWidth: true
        }
        
        Item {
            width: 2
            height: 10
            Layout.columnSpan: 2
        }   
    }
}

