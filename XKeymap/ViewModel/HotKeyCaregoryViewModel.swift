//
//  HotKeyCaregoryViewModel.swift
//  XKeymap
//
//  Created by Anup Saud on 2025-03-24.
//

import Foundation

@Observable
class HotKeyCategoryViewModel{
    var hotkeyCategoryViewModels: [HotKeyCategoryModel] = []
    init(){
        let productCategory : HotKeyCategoryModel = .init(
            name: "Product",
            hotkeyModels: [
                .init(
                    modifier: [.command],
                    character: "B",
                    text: "Build"
                ),
                .init(
                    modifier: [.command],
                    character: "r",
                    text: "Run"
                ),
                .init(
                    modifier: [.command],
                    character: ".",
                    text: "stop"
                ),
                .init(
                    modifier: [
                        .command,
                        .shift
                    ],
                    character: "K",
                    text: "Clean Build"
                ),
            ]
        )
        let schemeCategory: HotKeyCategoryModel = .init(name: "Scheme", hotkeyModels: [
            .init(
                modifier: [.control],
                character: "0",
                text: "Choose scheme"),
            .init(
                modifier: [.command],
                character: "<",
                text: "Edit scheme"),
        ])
        let hideOrShowPanelsCategory:HotKeyCategoryModel = .init(name: "Hide or Show Panels", hotkeyModels: [
            .init(
                modifier: [.command],
                character: "0",
                text: "Show/Hide Navigator (Left panel)"
            ),
            .init(
                modifier: [.option, .shift],
                character: "0",
                text: "Show/Hide Utilities (Right panel)"
            ),
            .init(
                modifier: [.shift],
                character: "Y",
                text: "Show/Hide the Debug area"
            ),
            .init(
                modifier: [
                    .command,
                    .option
                ],
                character: "⏎",
                text: "Show/Hide Canvas"
            ),
        ])
        let navigationCategory: HotKeyCategoryModel = .init(
            name: "Navigation",
            hotkeyModels: [
                .init(
                    modifier: [.command],
                    character: "1",
                    text: "Project"
                ),
                .init(
                    modifier: [.command],
                    character: "2",
                    text: "Source control"
                ),
                .init(
                    modifier: [.command],
                    character: "3",
                    text: "bookmarks"
                ),
                .init(
                    modifier: [.command],
                    character: "4",
                    text: "find"
                ),
                .init(
                    modifier: [.command],
                    character: "5",
                    text: "Issues"
                ),
                .init(
                    modifier: [.command],
                    character: "6",
                    text: "Tests"
                ),
                .init(
                    modifier: [.command],
                    character: "7",
                    text: "Debug"
                ),
                .init(
                    modifier: [.command],
                    character: "8",
                    text: "Breakpoints"
                ),
                .init(
                    modifier: [.command],
                    character: "9",
                    text: "Reports"
                ),
            ]
        )
        let inspectorCategory: HotKeyCategoryModel = .init(name: "Inspector", hotkeyModels: [
            .init(modifier: [.option, .command], character: "1", text: "File"),
            .init(modifier: [.option, .command], character: "2", text: "History"),
            .init(modifier: [.option, .command], character: "3", text: "Quick Help"),
            .init(modifier: [.option, .command], character: "4", text: "Show Inspector"),
        ])
        let structureCategory: HotKeyCategoryModel = .init(name: "Structure", hotkeyModels: [
            .init(modifier: [.command], character: "/", text: "Toggle comment/uncomment"),
            .init(modifier: [.control], character: "I", text: "Re-indent selected code"),
            .init(modifier: [.control], character: "M", text: "Format multiple lines"),
            .init(modifier: [.command, .shift], character: "[", text: "Shift Left"),
            .init(modifier: [.command, .shift], character: "]", text: "Shift Right"),
        ])
        let editingCategory: HotKeyCategoryModel = .init(name: "Editing", hotkeyModels: [
            .init(modifier: [.command], character: "C", text: "Copy"),
            .init(modifier: [.command], character: "V", text: "Paste"),
            .init(modifier: [.command, .shift, .option], character: "V", text: "Paste and Preserve Formatting"),
            .init(modifier: [.command], character: "D", text: "Duplicate"),
        ])
        let miscCategory: HotKeyCategoryModel = .init(name: "Miscellaneous", hotkeyModels: [
            .init(modifier: [.command, .shift], character: "A", text: "Quick actions"),
            .init(modifier: [.shift, .control], character: "🖱️", text: "Create a new cursor on every click"),
            .init(modifier: [.shift, .control, .command], character: "M", text: "Minimap"),
            .init(modifier: [.globe], character: "E", text: "Emojis"),
        ])
        let debuggingCategory: HotKeyCategoryModel = .init(name: "Debugging", hotkeyModels: [
            .init(modifier: [.command], character: "\\", text: "Comment out"),
            .init(modifier: [.control, .option, .command], character: "F", text: "Fix all in scope"),
        ])
        let fileMenuCommandsCategory: HotKeyCategoryModel = .init(name: "File menu commands", hotkeyModels: [
            .init(modifier: [.command], character: "N", text: "New File"),
            .init(modifier: [.command, .option], character: "N", text: "New Group"),
        ])
        let sourceControlCategory:HotKeyCategoryModel = .init(name: "Source Control", hotkeyModels: [
            .init(modifier: [.command], character: "9", text: "Open the Source Control Navigator"),
            .init(modifier: [.command, .option], character: "C", text: "Commit changes"),
        ])
        
        hotkeyCategoryViewModels = [
            productCategory,
            schemeCategory,
            hideOrShowPanelsCategory,
            navigationCategory,
            inspectorCategory,
            structureCategory,
            editingCategory,
            miscCategory,
            debuggingCategory,
            fileMenuCommandsCategory,
            sourceControlCategory
            
        ]
  
        
        
    }
    

}
