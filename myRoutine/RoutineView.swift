//
//  RoutineView.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/29/22.
//

import SwiftUI

struct RoutineView: View {
    @ObservedObject var routine = Routine()
    
    @State private var currentIndex = 0
    
    @State private var showingEdit = false
    @State private var showingAdd = false
    
    var body: some View {
        NavigationStack {
            Rectangle()
                .frame(height: 3)
                .padding(.horizontal)
            List {
                ForEach(Array(routine.items.enumerated()), id: \.element) { index, item in
                    ItemView(item: item)
                    .swipeActions(edge: .leading) {
                        Button {
                            currentIndex = index
                            showingEdit = true
                        } label: {
                            Image(systemName: "pencil")
                        }
                    }
                    .onTapGesture {
                        routine.toggleCompleted(index: index)
                    }
                }
                .onDelete { indexSet in
                    routine.items.remove(atOffsets: indexSet)
                }
                .onMove { indexSet, index in
                    routine.items.move(fromOffsets: indexSet, toOffset: index)
                }
            }
            .navigationTitle("Routine")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
            .toolbar {
                Button {
                    showingAdd = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAdd) {
                AddItemView(routine: routine)
            }
            .sheet(isPresented: $showingEdit) {
                EditItemView(routine: routine, item: routine.items[currentIndex], index: currentIndex)
            }
        }
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView(routine: Routine())
    }
}
