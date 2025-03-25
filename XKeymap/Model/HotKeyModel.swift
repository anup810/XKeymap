//
//  HotKeyModel.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-22.
//

import Foundation
struct HotKeyModel:Identifiable{
    let id = UUID()
    
    let modifier: [Modifier] 
    let character: String
    let text: String
    
    
    var description: String{
        var result = ""
        for modifiers in modifier{
            result += modifiers.rawValue
            
        }
        result += " \(character.capitalized)"
        return result
      
    }
}
