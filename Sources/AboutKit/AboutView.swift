//
//  AboutView.swift
//  Vetero
//
//  Created by Adam on 12/05/2023.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.openURL) private var openURL
    let description: String

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
            HStack(spacing: 24) {
                Button {
                    openURL(URL(string: "https://micropixels.software")!)
                } label: {
                    Text("Website")
                }
                .buttonStyle(PrimaryActionButtonStyle(backgroundColor: .accentColor, fillParent: true))
                .frame(width: 120)
                Button {
                    openURL(URL(string: "https://twitter.com/rurza")!)
                } label: {
                    Text("Twitter")
                }
                .frame(width: 120)
                .buttonStyle(PrimaryActionButtonStyle(backgroundColor: .accentColor, fillParent: true))
            }
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 20)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(description: "Hello Worlds")
    }
}
