//
//  ToDoListItemsView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationStack {
//        NavigationView {
            VStack {
                
            }
            .navigationTitle("CL List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView()
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
