//
//  HotKeyCategoryModel.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-22.
//

import Foundation

struct HotKeyCategoryModel: Identifiable{
    let id = UUID()
    
    let name : String
    let hotkeyModels : [HotKeyModel]
}
