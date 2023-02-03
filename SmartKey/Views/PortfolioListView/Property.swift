//
//  propertyList.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import SwiftUI
import Foundation

struct Property: Identifiable{
    let id = UUID()
    let address: String
    let bath: String
    let room: String
    let size: String
    let price: String
    
}

