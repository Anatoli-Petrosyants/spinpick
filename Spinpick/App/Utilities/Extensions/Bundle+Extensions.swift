//
//  Bundle+Extensions.swift
//  Spinpick
//
//  Created by Anatoli Petrosyants on 11.11.24.
//

import Foundation

extension Bundle {
    
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
