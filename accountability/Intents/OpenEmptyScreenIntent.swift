//
//  OpenEmptyScreenIntent.swift
//  accountability
//
//  App Intent to open an empty screen and optionally select a popular app.
//

import Foundation
import AppIntents

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


