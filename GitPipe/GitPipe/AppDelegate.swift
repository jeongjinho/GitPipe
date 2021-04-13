//
//  AppDelegate.swift
//  GitPipe
//
//  Created by jinho jeong on 2021/04/14.
//

import Cocoa



@main
class AppDelegate: NSObject, NSApplicationDelegate {

  
    var statusItem: NSStatusItem?
    @IBOutlet weak var menu: NSMenu?
    @IBOutlet weak var firstMenuItem: NSMenuItem!
    var infoView: InfoView?
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    
    override func awakeFromNib() {
        super.awakeFromNib()
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
            statusItem?.button?.title = "GitPipe"
        
        if let menu = menu {
            statusItem?.menu = menu
            menu.delegate = self
        }
        
    
        if let firstItem = firstMenuItem {
            infoView = InfoView(frame: NSRect(x: 0, y: 0, width: 250.0, height: 170))
            firstItem.view = infoView
        }
    }
    @IBAction func showSendView(_ sender: Any) {
        let vc = ViewController()
        vc.view.frame = NSRect(x: 0, y: 0, width: 500, height: 500)
        let window = NSWindow(contentViewController: vc)
        window.makeKeyAndOrderFront(nil)
        
    }
}



extension AppDelegate: NSMenuDelegate {
    
    func menuWillOpen(_ menu: NSMenu) {
        //메뉴 열릴 때
        // 앱내에 저장소에서 정보 긁어와야함
    }
    
    func menuDidClose(_ menu: NSMenu) {
        // 메뉴 닫힐 때
    }
}
