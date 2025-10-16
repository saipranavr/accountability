//
//  OpenEmptyScreenIntent.swift
//  accountability
//
//  Created by Pranav reddy on 16/10/2025.
//

import Foundation
import AppIntents

@available(iOS 17.0, *)
enum PopularApp: String, AppEnum {
    case instagram = "instagram://"
    case youtube = "youtube://"
    case tiktok = "tiktok://"
    case spotify = "spotify://"
    case facebook = "fb://"
    case snapchat = "snapchat://"
    case whatsapp = "whatsapp://"
    case gmail = "googlegmail://"
    case chrome = "googlechrome://"
    case maps = "maps://"
    case messages = "sms://"
    case phone = "tel://"

    static var typeDisplayRepresentation: TypeDisplayRepresentation = TypeDisplayRepresentation(name: "App")

    static var caseDisplayRepresentations: [PopularApp : DisplayRepresentation] = [
        .instagram: DisplayRepresentation(title: "Instagram"),
        .youtube: DisplayRepresentation(title: "YouTube"),
        .tiktok: DisplayRepresentation(title: "TikTok"),
        .spotify: DisplayRepresentation(title: "Spotify"),
        .facebook: DisplayRepresentation(title: "Facebook"),
        .snapchat: DisplayRepresentation(title: "Snapchat"),
        .whatsapp: DisplayRepresentation(title: "WhatsApp"),
        .gmail: DisplayRepresentation(title: "Gmail"),
        .chrome: DisplayRepresentation(title: "Chrome"),
        .maps: DisplayRepresentation(title: "Maps"),
        .messages: DisplayRepresentation(title: "Messages"),
        .phone: DisplayRepresentation(title: "Phone")
    ]
}

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
        UserDefaults.standard.set(true, forKey: AppStorageKeys.shouldShowEmptyScreen)
        return .result()
    }
}

// Intents are discoverable in Shortcuts without an AppShortcutsProvider.


