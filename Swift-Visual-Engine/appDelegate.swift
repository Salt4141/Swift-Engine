import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var mainWindow: NSWindow!

    // functionality on launch
    func applicationDidFinishLaunching(_ aNotification: Notification) {

        // applying attributes to mainWindow:
        // - contentRect = position and size of mainWindow
        // - styleMask = styling options
        //   > https://developer.apple.com/documentation/appkit/nswindow/stylemask
        // - backing = how it draws things (always .buffered)
        // - defer = wait to start
        //   > start with .makeKeyandOrderFront(nil)
        mainWindow = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 800, height: 600),
                        styleMask: [.titled, .closable, .resizable,],
                        backing: .buffered, defer: true)

        
        mainWindow.center() // sets default (x,y) coordinates to the center of the screen
        mainWindow.title = "Cocoa App" 

        mainWindow.backgroundColor = NSColor(red: 170/255, green: 235/255, blue: 110/255, alpha: 1) // set the desired background color

        // putting mainWindow to the front of the screen 
        mainWindow.orderFrontRegardless()
        mainWindow.makeKey()
        mainWindow.makeMain()
    }

    // functionality on termination
    func applicationWillTerminate(_ aNotification: Notification) {
        mainWindow?.close()
    }
}