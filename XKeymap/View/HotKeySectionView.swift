//
//  HotKeySectionView.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-24.
//

import SwiftUI

struct HotKeySectionView: View {
    
    let hotkeyCategorName: String
    let hotkeyModels: [HotKeyModel]
    let searchQuery: String
    
    //TODO: Use Theme
    let sectionHeaderFont: Font = .body
    let fontWeight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red
    
    //TODO: Filter according to 'SearchQuery'
    var filterHotkeyModel: [HotKeyModel]{
        return hotkeyModels
    }
    
    var body: some View {
        if !filterHotkeyModel.isEmpty{
            Section {
                ForEach(filterHotkeyModel) { hotkeyModel in
                    //TODO: HotKeyRow
                    Text("\(hotkeyModel.character) \(hotkeyModel.text)")
                    HotKeyRowView(hotkeyModel: hotkeyModel, searchQuery: searchQuery)
                }
            } header: {
                Text(hotkeyCategorName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(sectionHeaderColor)
            }

        }
    }
}

#Preview {
    Form {
        HotKeySectionView(hotkeyCategorName: "Navigation", hotkeyModels: [.init(modifier: [.command], character: "1", text: "Project"),.init(modifier: [.command], character: "2", text: "Source Control"),], searchQuery: "")
    }
}
