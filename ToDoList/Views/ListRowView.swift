//
//  ListRowView.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompeted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompeted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {

    ListRowView(item: ItemModel(title: "First item!", isCompleted: false))
        .previewLayout(.sizeThatFits)
}

