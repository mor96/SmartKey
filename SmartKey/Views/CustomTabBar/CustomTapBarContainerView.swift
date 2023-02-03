//
//  CutstomTapBarContainerView.swift
//  SmartKey
//
//  Created by Mor Ohana on 12/1/22.
//

import SwiftUI


struct CustomTapBarContainerView<Content:View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content){
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack (alignment: .bottom){
            content
                .ignoresSafeArea()
            
            
            CustomTapBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in self.tabs = value})
    }
}

struct CutstomTapBarContainerView_Previews: PreviewProvider {
    
    static  let tabs: [TabBarItem] = []
    
    static var previews: some View {
        CustomTapBarContainerView(selection: .constant(tabs.first!)){
            Color.red
        }
    }
}
