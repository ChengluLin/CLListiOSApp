//
//  NewItemViewViewModel.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {
        
    }
    
    func save() {
        
    }
}
