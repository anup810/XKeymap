//
//  HotKeyRowView.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

struct HotKeyRowView: View {
    let hotkeyModel: HotKeyModel
    let searchQuery: String
    
    // TODO: Use Theme
    let font: Font = Theme.font
    let fontWeight: Font.Weight = Theme.fontWeight
    let fontSeconday: Font = Theme.fontSecondary
    let hotkeyWidth = Theme.hotKeyWidht
    
    var charFound: Bool{
        searchQuery.count == 1 && hotkeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPad: Bool{
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        let layout = Theme.layout(isPad: isPad)
        layout{
            HStack{ //TODO: Adapt for mac and ipad
                if charFound{
                    Text("🔵")
                        .font(font)
                }
                Text(hotkeyModel.description)
                    .font(font)
                    .fontWeight(fontWeight)
            }
            .frame(width: hotkeyWidth, alignment: .leading)
            Text(hotkeyModel.text.capitalized)
                .foregroundStyle(.secondary)
                .font(fontSeconday)
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}

#Preview {
    VStack {
        HotKeyRowView(hotkeyModel: .init(modifier: [.command], character: "b", text: "build"), searchQuery: "b")
        HotKeyRowView(hotkeyModel: .init(modifier: [.command], character: "b", text: "build"), searchQuery: "r")
    }
    .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
}
