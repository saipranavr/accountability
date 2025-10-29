//
//  AppStorageKeys.swift
//  accountability
//
//  Centralized keys used for @AppStorage and UserDefaults.
//

import Foundation

enum AppStorageKeys {
    // Set this to your App Group identifier in Xcode Capabilities (e.g., "group.com.yourcompany.accountability").
    static let appGroup: String = "group.accountability.shared"
    static let shouldShowEmptyScreen: String = "shouldShowEmptyScreen"
    static let selectedAppScheme: String = "selectedAppScheme"
    static let selectedAppTitle: String = "selectedAppTitle"
}


