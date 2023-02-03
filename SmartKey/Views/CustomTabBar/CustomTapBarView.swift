//
//  CustomTapBarView.swift
//  SmartKey
//
//  Created by Mor Ohana on 12/1/22.
//

import SwiftUI

struct CustomTapBarView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
        tabBarVersion2
            .onChange(of: selection, perform: { value in
                withAnimation(.easeInOut) {
                    localSelection = value
                }
            })
    }
}

struct CustomTapBarView_Previews: PreviewProvider {
    
    static  let tabs: [TabBarItem] = [
        .home, .add, .profile
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTapBarView(tabs: tabs, selection: .constant(tabs.first!),
                             localSelection: tabs.first!)
        }
    }
}


extension CustomTapBarView {
    
    private func tabView2(tab: TabBarItem) -> some View {
        VStack{
            Image(systemName: tab.iconName).resizable().frame(width: 30, height: 30)
                .font(.subheadline)
                
            Text(tab.title)
                .font(.system(size: 15, weight: .semibold, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                if localSelection == tab {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(tab.color.opacity(0.2))
                        .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                }
            }
        )        
    }
    private var tabBarVersion2: some View {
        HStack{
            ForEach(tabs, id: \.self){ tab in
                tabView2(tab: tab)
                    .onTapGesture {
                        switchTab(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(Color.white.ignoresSafeArea(edges: .bottom))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
    }
    
    private func switchTab(tab: TabBarItem){
            selection = tab
    }

}




