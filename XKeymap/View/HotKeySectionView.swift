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
    let sectionHeaderFont: Font = Theme.sectionHeaderFont
    let fontWeight: Font.Weight = Theme.fontWeight
    let subtitleColor: Color = Theme.subtitleColor
    
    //TODO: Filter according to 'SearchQuery'
    var filterHotkeyModel: [HotKeyModel]{
        if searchQuery.isEmpty || searchQuery.count == 1{
            return hotkeyModels
        }else {
            return hotkeyModels
                .filter{
                    $0
                    .text
                    .lowercased()
                    .contains(searchQuery.lowercased())
                }
        }
     
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
                    .foregroundStyle(subtitleColor)
            }

        }
    }
}

#Preview {
    Form {
        HotKeySectionView(hotkeyCategorName: "Navigation", hotkeyModels: [.init(modifier: [.command], character: "1", text: "Project"),.init(modifier: [.command], character: "2", text: "Source Control"),], searchQuery: "")
    }
    .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
}
