//
//  AppTapBarView.swift
//  SmartKey
//
//  Created by Mor Ohana on 12/1/22.
//

import SwiftUI

struct AppTapBarView: View {
    
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
   // @StateObject  var portfolioListViewModel: PortfolioView = PortfolioViewModel()
    
    var body: some View {
        NavigationView {
            CustomTapBarContainerView(selection: $tabSelection){
                PortfolioView()
                    .tabBarItem(tab: .home, selection: $tabSelection)
                    .padding([.bottom], 160)
                    .padding([.top], 100)
                
                addProperty()
                    .tabBarItem(tab: .add, selection: $tabSelection)
                   
                MapView()
                    .tabBarItem(tab: .map, selection: $tabSelection)
            }
        }
        
    }
}

struct AppTapBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView{
            AppTapBarView()
        }.environmentObject(PortfolioViewModel())
        
    }
}


