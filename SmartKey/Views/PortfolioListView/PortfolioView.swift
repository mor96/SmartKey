//
//  PortfolioView.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import SwiftUI

struct PortfolioView: View {
    
    @State private var viewModel = PortfolioViewModel()
    
    @State private var showingAddScreen = false
    
    @EnvironmentObject var portfolioListViewModel: PortfolioViewModel
    
    
    
    var body: some View {
        
        VStack{
            List{ForEach(portfolioListViewModel.portfolio, id: \.id){ property in
                            PropertyCell(property: property)
                        }
                        .onDelete(perform: portfolioListViewModel.deleteProperty)
                
            }
//            
//            Button(action: {
//                showingAddScreen = true
//                
//                
//                
//            },label: {Image("plus").resizable().frame(width: 40, height: 40)}).padding(.top)
//            
//            NavigationLink(destination: addProperty(), isActive: $showingAddScreen){
//            }
//
//            .navigationTitle("Potfolio")
            
        }
    }
}


struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PortfolioView()
        }
        .environmentObject(PortfolioViewModel())
    }
}


