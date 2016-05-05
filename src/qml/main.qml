import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import qtvulkan 1.0

ApplicationWindow {
    id: window
    width: 1200
    height: 700
    visible: true
    title: "Vulkan Cube"

    QtVulkan {
        id: vulkan
        anchors.fill: parent 
        visible: true
    }

    Timer {
        id: timer
        interval: 16
        running: true
        repeat: true
        onTriggered: vulkan.redraw()
    }
 
    Component.onCompleted: {
        vulkan.show_window()
        vulkan.resize_window(window.width,window.height)
        vulkan.init_vk()
        vulkan.init_vk_swapchain()
        vulkan.prepare()
    }
}
