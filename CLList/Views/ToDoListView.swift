//
//  ToDoListItemsView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
//    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        // users/<id>/todos/<entries>
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
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
