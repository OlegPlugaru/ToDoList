//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import Foundation

/*
 CRUD FUNCTIONS
 
 Create
 Read
 Update
 Delete
 
 */

class ListViewModel: ObservableObject {
    
<<<<<<< HEAD
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
=======
    @Published var items: [ItemModel] = []
    
>>>>>>> d6953d2b2bf69afa8c5276f5167edb517b834fd0
    init() {
        getItems()
    }
    
    
    func getItems() {
<<<<<<< HEAD
        guard let data = UserDefaults.standard.data(forKey: itemsKey),
              let saveditems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = saveditems
=======
        let newItems = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second!", isCompleted: true),
            ItemModel(title: "Third!", isCompleted: false)
         ]
        
        items.append(contentsOf: newItems)
>>>>>>> d6953d2b2bf69afa8c5276f5167edb517b834fd0
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
<<<<<<< HEAD
    
    
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
=======
>>>>>>> d6953d2b2bf69afa8c5276f5167edb517b834fd0
}
