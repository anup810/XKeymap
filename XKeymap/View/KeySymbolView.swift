//
//  KeySymbolView.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

struct KeySymbolView: View {
    var body: some View {
        let middleIndex = Modifier.allCases.count / 2 + 1
        let endIndex = Modifier.allCases.count
        
        HStack(alignment: .top){
            KeySymbolViewColumn(lowerIndex: 0, upperIndex: middleIndex)
            KeySymbolViewColumn(lowerIndex: middleIndex, upperIndex: endIndex)
        }
    }
}

#Preview {
    KeySymbolView()
}
