//
//  AddView.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button (action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!! 😨😰😱"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .preferredColorScheme(.dark)
    .environmentObject(ListViewModel())
}

#Preview {
    NavigationView {
        AddView()
    }
    .preferredColorScheme(.light)
    .environmentObject(ListViewModel())
}
