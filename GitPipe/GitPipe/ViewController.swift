//
//  ViewController.swift
//  GitPipe
//
//  Created by jinho jeong on 2021/04/14.
//

import Cocoa

class ViewController: NSViewController {

    override func loadView() {
        self.view = NSView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        let sendView = SendView(frame: self.view.bounds)
        view.window?.styleMask.remove(.resizable)
        view.window?.styleMask.remove(.miniaturizable)
        view.window?.center()
        self.view.window?.minSize = NSSize(width: 100, height: 100)
        view.addSubview(sendView)
        sendView.translatesAutoresizingMaskIntoConstraints = false
        sendView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        sendView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        sendView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        sendView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        sendView.cancelButton.target = self
        sendView.cancelButton.action = #selector(dismissView)
        
    }
    
    @objc func dismissView() {
        view.window?.performClose(self)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

