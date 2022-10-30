//
//  EditItemView.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/28/22.
//

import SwiftUI

struct EditItemView: View {
    @ObservedObject var routine: Routine
    
    @Environment(\.dismiss) var dismiss
    
    @State var item: Item
    @State var index: Int
    
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .padding(.horizontal)
                    .frame(height: 3)
                Form {
                    Section(header: Text("Enter a new task name")) {
                        TextField("Enter name", text: $item.name)
                    }
                }
            }
            .navigationTitle("Edit this task")
            //.background(.darkGradient)
            //.scrollContentBackground(.hidden)
            .toolbar {
                Button("Save") {
                    if(item.name.trimmingCharacters(in: .whitespacesAndNewlines) != "") {
                        routine.items[index].name = item.name
                    }
                    dismiss()
                }
                //.foregroundColor(.white)
            }
        }
        //.preferredColorScheme(.light)
    }
}

struct EditItemView_Previews: PreviewProvider {
    @State private var routine = Routine()
    
    static var previews: some View {
        EditItemView(routine: Routine(), item: Item(name: "Coffee"), index: 0)
    }
}
