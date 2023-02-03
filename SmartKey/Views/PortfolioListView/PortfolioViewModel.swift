//
//  PorfolioListViewModel.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/30/22.
//

import Foundation

class PortfolioViewModel: ObservableObject{
    
    @Published var portfolio: [Property] = []
    //@Published var alertItem: AlerItem?
    
    init() {
        getPorfolio()
    }
    
    func getPorfolio() {
        let list = [
            Property(address: "Mor St", bath: "1", room: "3", size: "2133", price: "$3453"),
            Property(address: "Main St", bath: "3", room: "6", size: "4223", price: "$5400"),
            Property(address: "Side St", bath: "1", room: "2", size: "1234", price: "$1800"),
            Property(address: "Corner St", bath: "1", room: "1", size: "784", price: "$900"),
            Property(address: "Hale St", bath: "2", room: "3", size: "1560", price: "$1000"),
            Property(address: "West St", bath: "3", room: "5", size: "2840", price: "$3400"),
            Property(address: "North St", bath: "1", room: "1", size: "344", price: "$500"),
            Property(address: "South St", bath: "2", room: "2", size: "834", price: "$1200"),
            Property(address: "East St", bath: "3", room: "3", size: "1980", price: "$1900")
        ]
        portfolio.append(contentsOf: list)
        
    }
    
    func deleteProperty(indexSet: IndexSet){
        portfolio.remove(atOffsets: indexSet)
    }
    
    func addProperty(address: String, bath: String, room: String, size: String, price: String){
        let newProperty = Property(address: address, bath: bath, room: room, size: size, price:"$" + price)
        portfolio.append(newProperty)
    }
    
//    func deleteItem(indexSer: IndexSet){
//        portfolio.remove(atOffsets: indexSet)
//    }
    
    
    
    
    
    
    
    
    
    
    
    
}
