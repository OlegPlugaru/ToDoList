//
//  ItemModel.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompeted: Bool
}
