//
//  ContentView.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/27/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            RoutineView()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard")
                    Text("Routine")
                }
            Text("Alarm view")
                .tabItem {
                    Image(systemName: "clock")
                    Text("Alarm")
                }
            Text("Graph View")
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Analytics")
                }
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            Text("Settings View")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
