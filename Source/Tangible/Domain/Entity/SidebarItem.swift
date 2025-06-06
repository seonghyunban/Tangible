//
//  SidebarItem.swift
//  Tangible
//
//  Created by 반성현 on 6/6/25.
//

import Foundation

enum SidebarItem: String, CaseIterable, Identifiable {
    case fileSystem = "File System"
    case allNotes = "All Notes"
    case folders = "Folders"
    case tags = "Tags"
    case trash = "Trash"

    var id: String { rawValue }
}
