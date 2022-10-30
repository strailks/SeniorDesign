//
//  Routine.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/27/22.
//

import Foundation

class Routine: ObservableObject, Identifiable {
    @Published var items = [Item]()
    
    func addItem(item: Item) {
        items.append(item)
    }
    
    func toggleCompleted(index: Int) {
        self.items[index].completed.toggle()
    }
}
