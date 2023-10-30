//
//  ItemModel.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import Foundation

// Immutable Struct
<<<<<<< HEAD
struct ItemModel: Identifiable, Codable {
=======
struct ItemModel: Identifiable {
>>>>>>> d6953d2b2bf69afa8c5276f5167edb517b834fd0
    let id: String
    let title: String
    let isCompeted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompeted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompeted)
    }
}
