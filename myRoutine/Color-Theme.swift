//
//  Color-Theme.swift
//  myRoutine
//
//  Created by Cooper Unruh on 10/28/22.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.5, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.7, green: 0.2, blue: 0.4)
    }
    
    static var darkGradient: LinearGradient {
        LinearGradient(colors: [
            Color(red: 0.5, green: 0.1, blue: 0.2),
            Color(red: 0.7, green: 0.1, blue: 0.2)
        ], startPoint: .top, endPoint: .bottom)
    }
}
