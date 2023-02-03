//
//  HomeScreen.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            Color.red
            Image(systemName: "phone.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100))
        }
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
