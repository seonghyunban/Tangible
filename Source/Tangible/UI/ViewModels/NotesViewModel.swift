//
//  NotesViewModel.swift
//  Tangible
//
//  Created by 반성현 on 6/6/25.
//

import Foundation
import SwiftUI

class NotesViewModel: ObservableObject {
    @Published var selectedTab: SidebarItem? = .allNotes
    @Published var columnVisibility: NavigationSplitViewVisibility = .all
    @Published var showAlert = false

    func toggleSidebar() {
        columnVisibility = (columnVisibility == .all) ? .detailOnly : .all
    }
    
    var isSidebarVisible: Bool {
        columnVisibility == .all
    }
    
    func addNote() {
        showAlert = true
    }
}
