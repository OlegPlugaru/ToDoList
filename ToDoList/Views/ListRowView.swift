//
//  ListRowView.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is the first title!")
}
