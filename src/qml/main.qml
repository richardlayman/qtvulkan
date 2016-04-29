import QtQuick 2.5
import qtvulkan 1.0

Rectangle {
    id: window
    width: 800
    height: 600
    
    QtVulkan {
        id: viewport
        anchors.fill: parent
    }
}
