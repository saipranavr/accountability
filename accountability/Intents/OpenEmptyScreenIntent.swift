//
//  OpenEmptyScreenIntent.swift
//  accountability
//
//  App Intent to open an empty screen and optionally select a popular app.
//

import Foundation
import AppIntents
import SwiftUI

@available(iOS 17.0, *)
struct OpenEmptyScreenIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Empty Screen"
    static var description: IntentDescription = IntentDescription("Open the app to a blank screen.")
    static var openAppWhenRun: Bool = true

    @Parameter(title: "App")
    var app: PopularApp?

    static var parameterSummary: some ParameterSummary {
        Summary("Open Empty Screen with \(\.$app)")
    }

    func perform() async throws -> some IntentResult {
        let store = UserDefaults(suiteName: AppStorageKeys.appGroup) ?? .standard
        store.set(true, forKey: AppStorageKeys.shouldShowEmptyScreen)
        if let app {
            // Persist chosen app scheme and a friendly title for the Empty screen button
            store.set(app.rawValue, forKey: AppStorageKeys.selectedAppScheme)
            let title: String
            switch app {
            case .instagram: title = "Instagram"
            case .youtube: title = "YouTube"
            case .tiktok: title = "TikTok"
            case .spotify: title = "Spotify"
            case .facebook: title = "Facebook"
            case .snapchat: title = "Snapchat"
            case .whatsapp: title = "WhatsApp"
            case .gmail: title = "Gmail"
            case .chrome: title = "Chrome"
            case .maps: title = "Maps"
            case .messages: title = "Messages"
            case .phone: title = "Phone"
            }
            store.set(title, forKey: AppStorageKeys.selectedAppTitle)
        } else {
            store.removeObject(forKey: AppStorageKeys.selectedAppScheme)
            store.removeObject(forKey: AppStorageKeys.selectedAppTitle)
        }
        return .result()
    }
}


