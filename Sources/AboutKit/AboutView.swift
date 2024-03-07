//
//  AboutView.swift
//  Vetero
//
//  Created by Adam on 12/05/2023.
//

import SwiftUI

struct AboutView<Content: View>: View {
    let description: String
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 4) {
                Image(nsImage: NSApp.applicationIconImage)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(Bundle.main.productName ?? "")
                    .foregroundColor(.primary)
                    .font(.system(size: 22, weight: .heavy))
                HStack(spacing: 2) {
                    Text(Bundle.main.releaseVersionNumber ?? "")
                    Text("(\(Bundle.main.buildVersionNumber ?? ""))")
                }
                .foregroundColor(.secondary)
            }
            VStack(spacing: 4) {
                Text(description)
                Image("micropixels", bundle: Bundle.module)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 18)
                    .offset(y: 1)
            }
            .padding(.vertical)
            content()
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
    }
}

#if DEBUG
#Preview {
    AboutView(description: "Hello World") {
        HStack(spacing: 24) {
            Button {

            } label: {
                Text("Website")
            }
            .buttonStyle(.borderedProminent)
            .frame(width: 120)
            Button {

            } label: {
                Text("Twitter")
            }
            .frame(width: 120)
            .buttonStyle(.borderedProminent)
        }
    }
}
#endif
