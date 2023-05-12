//
//  Bundle+.swift
//  Horzono
//
//  Created by Adam on 08/04/2023.
//

import Foundation

extension Bundle {
    var releaseVersionNumber: String? {
        infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        infoDictionary?["CFBundleVersion"] as? String
    }

    var productName: String? {
        infoDictionary?["CFBundleExecutable"] as? String
    }
}
