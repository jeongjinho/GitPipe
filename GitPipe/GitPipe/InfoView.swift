//
//  InfoView.swift
//  GitPipe
//
//  Created by jinho jeong on 2021/04/14.
//

import Cocoa

class InfoView: NSView {

    var portIDLabel: NSTextField = {
       let portID = NSTextField(string: "")
        portID.bezelStyle = .roundedBezel
        portID.isBordered = false
        return portID
    }()
    
    var tokenLabel: NSTextField = {
       let token = NSTextField(string: "")
        token.bezelStyle = .roundedBezel
        token.isBordered = false
        token.contentType = .oneTimeCode
        token.stringValue = "token : "
        return token
    }()
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    
        portIDLabel.stringValue = "PortID : "
        self.addSubview(portIDLabel)
        portIDLabel.translatesAutoresizingMaskIntoConstraints = false
        portIDLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant:  50).isActive = true
        portIDLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        portIDLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        self.addSubview(tokenLabel)
        tokenLabel.translatesAutoresizingMaskIntoConstraints = false
        tokenLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant:  50).isActive = true
        tokenLabel.topAnchor.constraint(equalTo: portIDLabel.bottomAnchor, constant: 20).isActive = true
        tokenLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        // Drawing code here.
        
        
    }
    
}
