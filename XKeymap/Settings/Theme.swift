//
//  Theme.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI
#if os(iOS)
struct Theme{
    static let font: Font  = .headline
    static let fontSecondary: Font = .body
    static let fontWeight: Font.Weight = .regular
    static let modiferFont : Font = .headline
    static let frameWidth: CGFloat? = nil
    static let frameHeight: CGFloat? = nil
    static let listStyle = DefaultListStyle()
    static let sectionHeaderFont: Font = .body
    static let hotKeyWidht: CGFloat? = nil
    static let subtitleColor: Color = .red
    
    static  func layout(isPad: Bool) ->AnyLayout{
        isPad ?  AnyLayout(VStackLayout(alignment:.leading)) : AnyLayout(HStackLayout())
    }
}
#else
struct Theme{
    static let font: Font  = .title
    static let fontSecondary: Font = .title
    static let fontWeight: Font.Weight = .semibold
    static let modiferFont : Font = .title
    static let frameWidth: CGFloat? = 900
    static let frameHeight: CGFloat? = 1000
    static let listStyle = SidebarListStyle()
    static let sectionHeaderFont: Font = .largeTitle
    static let hotKeyWidht: CGFloat? = 200
    static let subtitleColor: Color = .red
    
    static func layout(isPad: Bool) ->AnyLayout{
        AnyLayout(HStackLayout())
    }
}

#endif
