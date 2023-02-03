//
//  AppNavView.swift
//  SmartKey
//
//  Created by Mor Ohana on 12/1/22.
//

import SwiftUI

struct AppNavView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.green.ignoresSafeArea()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                NavigationLink(
                    destination: Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                    ,
                    label: {
                        Text("Navigate")
                    })
                
            }
            .navigationTitle("HELLO")
        }
    }
}

struct AppNavView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavView()
    }
}
