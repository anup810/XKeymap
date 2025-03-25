//
//  KeySymbolViewColumn.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

struct KeySymbolViewColumn: View {
    let lowerIndex: Int
    let upperIndex: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            ForEach(lowerIndex..<upperIndex,id: \.self){ index in
                KeyValueRow(modifier: Modifier.allCases[index])
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    KeySymbolViewColumn(lowerIndex: 0, upperIndex: Modifier.allCases.count)
}
