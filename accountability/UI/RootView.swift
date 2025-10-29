//
//  RootView.swift
//  accountability
//

import SwiftUI

struct RootView: View {
    @AppStorage(AppStorageKeys.shouldShowEmptyScreen, store: UserDefaults(suiteName: AppStorageKeys.appGroup)) private var shouldShowEmptyScreen: Bool = false

    var body: some View {
        Group {
            if shouldShowEmptyScreen {
                EmptyScreenView()
                    .onDisappear {
                        // Reset after the empty screen is dismissed
                        shouldShowEmptyScreen = false
                    }
            } else {
                ContentView()
            }
        }
    }
}

#Preview {
    RootView()
}


