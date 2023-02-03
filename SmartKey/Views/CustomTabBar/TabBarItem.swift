//
//  TabBarItem.swift
//  SmartKey
//
//  Created by Mor Ohana on 12/1/22.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}


enum TabBarItem: Hashable {
    case home, add, profile, map
    
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .add: return "plus.circle"
        case .profile: return "person"
        case .map: return "map"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .add: return "Add"
        case .profile: return "Profile"
        case .map: return "Map"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return Color.blue
        case .add: return Color.blue
        case .profile: return Color.blue
        case .map: return Color.blue
        }
    }
}
