//
//  addProperty.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import SwiftUI

struct addProperty: View {
    
    @EnvironmentObject var portfolioViewModel: PortfolioViewModel
    
    @State  var addressTextFeild = ""
    @State  var roomTextFeild = ""
    @State  var bathTextFeild = ""
    @State  var sizeTextFeild = ""
    @State  var priceTextFeild = ""
    @State var m = 0
    
    
    let lols = [String]().self
    @State var nas = [Property]().self
    @State private var showPortfolioView = false
    
    
    
    
    var body: some View {
        
        Form{
            Section(header: Text("Add Property")) {
                TextField("Address", text: $addressTextFeild)
                TextField("# Baths", text: $bathTextFeild)
                TextField("# Bedrooms", text: $roomTextFeild)
                TextField("Size", text: $sizeTextFeild)
                TextField("Price", text: $priceTextFeild)
                
                Button(action: addBtnPressed, label: {
                    Text("Add".uppercased())
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding([.top], 20)
                    
                })
                
            }
        
            
        }.padding([.top], 200)
        
    }
    
    
    func addBtnPressed(){
        portfolioViewModel.addProperty(address: addressTextFeild, bath: bathTextFeild, room: roomTextFeild, size: sizeTextFeild, price: priceTextFeild)
        
    }
    
    
}

struct addProperty_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            addProperty()
        }
        .environmentObject(PortfolioViewModel())
    }
}
