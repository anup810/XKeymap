//
//  Modifier.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-22.
//

import Foundation
enum Modifier: String, CaseIterable{
    case control = "⌃"
    case option = "⌥"
    case shift = "⇧"
    case command = "⌘"
    case enter = "⏎" // "⌅" "⏎"
    case escape = "⎋"
    case globe = "🌐"
    
    var description: String{
        switch(self){
            
        case .control:
            "cntrl"
        case .option:
            "alt"
        case .shift:
            "shift"
        case .command:
            "command"
        case .enter:
            "enter"
        case .escape:
            "escape"
        case .globe:
            "globe/fn"
        }
    }
}
