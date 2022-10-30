//
//  Task.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/27/22.
//

import Foundation

struct Item: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var completed = false
}
