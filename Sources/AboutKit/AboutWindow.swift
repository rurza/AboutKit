//
//  AboutWindow.swift
//  
//
//  Created by Adam on 12/05/2023.
//
#if canImport(AppKit)

import Cocoa
import SwiftUI

public class AboutWindow<Content: View>: NSWindow {
    public convenience init(description: String, @ViewBuilder customContent: @escaping () -> Content) {
        let vc = NSHostingController(rootView: AboutView(description: description, content: customContent))
        if #available(macOS 13.0, *) {
            vc.sizingOptions = [.preferredContentSize]
        }
        self.init(contentViewController: vc)
        self.isReleasedWhenClosed = false
        self.titlebarAppearsTransparent = true
        self.styleMask = [.closable, .miniaturizable, .titled]
        self.titleVisibility = .hidden
        self.title = Bundle.main.productName ?? "About"
    }
}

#endif
