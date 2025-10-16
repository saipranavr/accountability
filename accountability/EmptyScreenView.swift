//
//  EmptyScreenView.swift
//  accountability
//
//  Created by Pranav reddy on 16/10/2025.
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


