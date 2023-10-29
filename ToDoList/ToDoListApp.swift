//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI


/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
