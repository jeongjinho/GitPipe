//
//  SendView.swift
//  GitPipe
//
//  Created by jinho jeong on 2021/04/14.
//

import Cocoa

class SendView: NSView {

    let branchPopupButton: NSPopUpButton = {
       let branchPopup = NSPopUpButton()
        branchPopup.translatesAutoresizingMaskIntoConstraints = false
        return branchPopup
    }()
    
    let cancelButton: NSButton = {
        let cancel = NSButton()
        cancel.title = "Cancel"
        cancel.bezelStyle = .texturedRounded
        cancel.bezelColor = .systemBlue
        cancel.contentTintColor = .white
        cancel.isBordered = false
        cancel.wantsLayer = true
        cancel.layer?.backgroundColor = NSColor.lightGray.cgColor
        cancel.layer?.cornerRadius = 3
        cancel.translatesAutoresizingMaskIntoConstraints = false
        return cancel
    }()
    
    let sendButton: NSButton = {
        let send = NSButton()
        send.title = "Send"
        send.bezelStyle = .texturedRounded
        send.bezelColor = .systemBlue
        send.contentTintColor = .white
        send.isBordered = false
        send.wantsLayer = true
        send.layer?.backgroundColor = NSColor.systemBlue.cgColor
        send.layer?.cornerRadius = 3
        send.translatesAutoresizingMaskIntoConstraints = false
        return send
    }()
    
    let branchLabel: NSTextField = {
       let branch = NSTextField(labelWithString: "Select branch :")
        branch.bezelStyle = .roundedBezel
        branch.isBordered = false
        branch.translatesAutoresizingMaskIntoConstraints = false
        return branch
    }()
    
    let noteLabel: NSTextField = {
       let note = NSTextField(labelWithString: "write note")
        note.bezelStyle = .roundedBezel
        note.isBordered = false
        note.translatesAutoresizingMaskIntoConstraints = false
        return note
    }()
    
    let notTextArea: NSTextView = {
       let note = NSTextView()
    //    note.bezelStyle = .roundedBezel
//        note.isBordered = false
        
        note.translatesAutoresizingMaskIntoConstraints = false
        return note
    }()
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        addSubview(branchLabel)
        branchLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        branchLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        branchLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        branchLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
        
        addSubview(branchPopupButton)
        branchPopupButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        branchPopupButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        branchPopupButton.topAnchor.constraint(equalTo: branchLabel.bottomAnchor, constant: 10).isActive = true
        
        addSubview(noteLabel)
        noteLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        noteLabel.topAnchor.constraint(equalTo: branchPopupButton.bottomAnchor, constant: 30).isActive = true
        noteLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        noteLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
//        addSubview(notTextArea)
//        notTextArea.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
//        notTextArea.topAnchor.constraint(equalTo: noteLabel.bottomAnchor, constant: 10).isActive = true
//        notTextArea.widthAnchor.constraint(equalToConstant: 500).isActive = true
//        notTextArea.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        notTextArea.frame = NSRect(x: 10, y: 200, width: 300, height: 200)
        
        addSubview(sendButton)
        sendButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        sendButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        sendButton.heightAnchor.constraint(equalToConstant: 21).isActive = true
        sendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        
        addSubview(cancelButton)
        cancelButton.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -10).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 21).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        
        for i in 0...20 {
            branchPopupButton.addItem(withTitle: "\(i) item")
        }
       
       
        // Drawing code here.
    }
    
    
}
