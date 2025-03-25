//
//  KeyValueRow.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

struct KeyValueRow: View {
    let modifier: Modifier
    
    //TODO: Use theme
    let modifierFont: Font = Theme.modiferFont
    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)")
            .font(modifierFont)
    }
}

#Preview {
    KeyValueRow(modifier: .command)
}
