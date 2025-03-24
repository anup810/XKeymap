//
//  MainHotKeysView.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-24.
//

import SwiftUI

struct MainHotKeysView: View {
    @State private var searchQuery = ""
    var viewModel : HotKeyCategoryViewModel = HotKeyCategoryViewModel()
    
    var body: some View {
        NavigationStack{
            Form{
                List(viewModel.hotkeyCategoryModels){hotkeyCategory in
                    HotKeySectionView(
                        hotkeyCategorName: hotkeyCategory.name,
                        hotkeyModels: hotkeyCategory.hotkeyModels,
                        searchQuery: searchQuery
                    )
                }
            }
            .navigationTitle("Xcode HotKeys")
            .searchable(text: $searchQuery,prompt: "Search...")
        }
    }
}

#Preview {
    MainHotKeysView()
}
