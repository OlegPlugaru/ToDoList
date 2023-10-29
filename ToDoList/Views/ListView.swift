//
//  ListView.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
       ItemModel(title: "This is the first title!", isCompeted: false),
       ItemModel(title: "This is the second!", isCompeted: true),
       ItemModel(title: "Third!", isCompeted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
              ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


