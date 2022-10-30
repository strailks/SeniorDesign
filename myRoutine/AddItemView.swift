//
//  AddItemView.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/28/22.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var routine: Routine
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .frame(height: 3)
                    .padding(.horizontal)
                Form {
                    Section(header: Text("Enter a task name")) {
                        TextField("Enter name", text: $name)
                    }
                }
            }
            .navigationTitle("Add a new task")
            .toolbar {
                Button("Save") {
                    if name.trimmingCharacters(in: .whitespacesAndNewlines) != "" {
                        let item = Item(name: name)
                        routine.addItem(item: item)
                    }
                    dismiss()
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(routine: Routine())
    }
}
