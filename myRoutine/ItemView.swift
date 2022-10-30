//
//  ItemView.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/28/22.
//

import SwiftUI

struct ItemView: View {
    @State var item: Item
    var body: some View {
        HStack {
            Text(item.name)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Image(systemName: item.completed ? "circle.fill" : "circle")
                .foregroundColor(item.completed ? .green : .red)
                .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(name: "Sweep the floor"))
    }
}
