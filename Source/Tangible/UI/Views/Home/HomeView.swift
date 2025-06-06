//
//  HomeView.swift
//  Tangible
//
//  Created by 반성현 on 6/6/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = NotesViewModel()

    var body: some View {
        NavigationSplitView (
            columnVisibility: $viewModel.columnVisibility        ){
            Sidebar(selection: $viewModel.selectedTab)
        } detail: {
            // Main content area
            ZStack {
                // Responsive layout depending on sidebar
                ContentArea(selection: viewModel.selectedTab)
                    .frame(maxWidth: .infinity)
                    .padding(viewModel.isSidebarVisible ? 24 : 48)
            }
            .toolbar {

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        viewModel.addNote()
                    }) {
                        Label("Add Note", systemImage: "plus")
                    }
                }
            }
                .alert("Add Note Button Pressed", isPresented: $viewModel.showAlert) {
                    Button("OK", role: .cancel) { }
                }
        }
    }
}

#Preview {
    HomeView()
}
