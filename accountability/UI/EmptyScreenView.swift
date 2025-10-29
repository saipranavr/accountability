//
//  EmptyScreenView.swift
//  accountability
//

import SwiftUI

struct EmptyScreenView: View {
    @Environment(\.openURL) private var openURL
    @AppStorage(AppStorageKeys.selectedAppScheme, store: UserDefaults(suiteName: AppStorageKeys.appGroup)) private var selectedAppScheme: String = ""
    @AppStorage(AppStorageKeys.selectedAppTitle, store: UserDefaults(suiteName: AppStorageKeys.appGroup)) private var selectedAppTitle: String = ""

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            if let url = URL(string: selectedAppScheme), !selectedAppScheme.isEmpty {
                VStack(spacing: 16) {
                    Button(action: {
                        openURL(url)
                    }) {
                        Text("Open \(selectedAppTitle.isEmpty ? "App" : selectedAppTitle)")
                            .font(.headline)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    }
                }
            }
        }
        .accessibilityIdentifier("EmptyScreenView")
    }
}

#Preview {
    EmptyScreenView()
}


