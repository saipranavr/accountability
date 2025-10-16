//
//  RootView.swift
//  accountability
//

import SwiftUI

struct RootView: View {
    @AppStorage(AppStorageKeys.shouldShowEmptyScreen) private var shouldShowEmptyScreen: Bool = false

    var body: some View {
        Group {
            if shouldShowEmptyScreen {
                EmptyScreenView()
                    .task {
                        // Reset after showing once so normal routing resumes
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


