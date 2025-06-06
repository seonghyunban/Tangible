//
//  Sidebar.swift
//  Tangible
//
//  Created by 반성현 on 6/6/25.
//

import SwiftUI

struct Sidebar: View {
    @Binding var selection: SidebarItem?
    

    var body: some View {
        List(SidebarItem.allCases, selection: $selection) { item in
            NavigationLink(value: item) {
                Label(item.rawValue, systemImage: iconName(for: item))
            }
        }
        .navigationTitle("Sections")
    }

    private func iconName(for item: SidebarItem) -> String {
        switch item {
        case .fileSystem: return "folder.fill"
        case .allNotes: return "note.text"
        case .folders: return "folder"
        case .tags: return "tag"
        case .trash: return "trash"
        }
    }
}

#Preview {
    Sidebar(selection: .constant(.allNotes))
}
