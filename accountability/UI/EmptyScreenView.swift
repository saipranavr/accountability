//
//  EmptyScreenView.swift
//  accountability
//

import SwiftUI

struct EmptyScreenView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
        }
        .accessibilityIdentifier("EmptyScreenView")
    }
}

#Preview {
    EmptyScreenView()
}


