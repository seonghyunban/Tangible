//
//  ContentArea.swift
//  Tangible
//
//  Created by 반성현 on 6/6/25.
//

import SwiftUI

struct ContentArea: View {
    var selection: SidebarItem?

    var body: some View {
        switch selection {
        case .fileSystem:
            FileSystemView()
        case .allNotes:
            AllNotesView()
        case .folders:
            FolderView()
        case .tags:
            TagView()
        case .trash:
            TrashView()
        case .none:
            Text("Select a section")
        }
    }
}

#Preview {
    ContentArea()
}
