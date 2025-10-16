//
//  OpenEmptyScreenIntent.swift
//  accountability
//
//  Created by Pranav reddy on 16/10/2025.
//

import Foundation
import AppIntents

@available(iOS 17.0, *)
struct OpenEmptyScreenIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Empty Screen"

    static var description: IntentDescription = IntentDescription("Open the app to a blank screen.")

    static var openAppWhenRun: Bool = true

    func perform() async throws -> some IntentResult {
        UserDefaults.standard.set(true, forKey: AppStorageKeys.shouldShowEmptyScreen)
        return .result()
    }
}

// Intents are discoverable in Shortcuts without an AppShortcutsProvider.


