//
//  UIApplication+Extensions.swift
//  Spinpick
//
//  Created by Anatoli Petrosyants on 11.11.24.
//

import Foundation
import SafariServices

extension UIApplication {
    
    func openSafari(with url: URL,
                    entersReaderIfAvailable: Bool = false,
                    barCollapsingEnabled: Bool = true) {
        let configuration = SFSafariViewController.Configuration()
        configuration.entersReaderIfAvailable = entersReaderIfAvailable
        configuration.barCollapsingEnabled = barCollapsingEnabled
        let safariViewController = SFSafariViewController(url: url, configuration: configuration)
        UIApplication.shared.firstKeyWindow?.rootViewController?.present(safariViewController,
                                                                         animated: true, completion: nil)
    }
}

// https://sarunw.com/posts/sfsafariviewcontroller-in-swiftui/
extension UIApplication {
    
    var firstKeyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .filter { $0.activationState == .foregroundActive }
            .first?.keyWindow
    }
}
