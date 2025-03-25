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
    let font: Font = .body
    let fontWeight: Font.Weight = .regular
    let fontSeconday: Font = .headline
    
    var charFound: Bool{
        searchQuery.count == 1 && hotkeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{ //TODO: Adapt for mac and ipad
                if charFound{
                    Text("🔵")
                        .font(font)
                }
                Text(hotkeyModel.description)
                    .font(font)
                    .fontWeight(fontWeight)
            }
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
}
