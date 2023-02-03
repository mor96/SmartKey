//
//  PropertyCell.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/30/22.
//

import SwiftUI

struct PropertyCell: View {
    
    let property: Property
    
    var body: some View {
        HStack{
            Image(systemName: "house.fill").foregroundColor(.red)
                .font(.system(size: 80))
            VStack{
                Text(property.price).bold()
                    .foregroundColor(Color.blue)
                
                Text(property.address).font(.system(size: 12))
                    .foregroundColor(Color.blue)
                
                HStack{
                    Image("bath-tub").resizable().frame(width: 20, height: 20)
                        .foregroundColor(.red)
                    Text(property.bath)
                    Image("bed").resizable().frame(width: 20, height: 20)
                        .foregroundColor(.red)
                    Text(property.room)
                    Image("wide").resizable().frame(width: 20, height: 20)
                        .foregroundColor(.red)
                    Text(property.size)
                    
                }
            }
        }
    }
}

struct PropertyCell_Previews: PreviewProvider {
    
    static var prop = Property(address: "Tel Aviv", bath: "3", room: "3", size: "333", price: "11212")
    static var prop2 = Property(address: "New York", bath: "3", room: "3", size: "333", price: "11212")
    
    
    
    static var previews: some View {
        Group {
            PropertyCell(property: prop)
            
        }
    }
}
