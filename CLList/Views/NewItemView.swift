//
//  NewItemView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
            
            
            Form {
                // Title
                TextField("Title", text: $viewModel.title )
                    .textFieldStyle(DefaultTextFieldStyle())
                //Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                //Button
                CLButton(title: "Save",
                         background: .pink, action: {
                    print("SSSS")
                    viewModel.save()
                })
                         .padding()
            }
        }
    }
}

#Preview {
    NewItemView()
}
