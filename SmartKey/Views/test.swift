//
//  test.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import UIKit

class test: View {

        var body: some View {
            
            VStack{
                List(0 ..< 5){ item in
                    
                    HStack{
                        Image(systemName: "house.fill").foregroundColor(.red)
                            .font(.system(size: 80))
                        VStack{
                            Text("$3,500").bold()
                                .foregroundColor(Color.blue)
                            
                            Text("123 Main Street").font(.system(size: 12))
                                .foregroundColor(Color.blue)
                            
                            HStack{
                                Image("bath-tub").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.red)
                                Text("4")
                                Image("bed").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.red)
                                Text("2")
                                Image("wide").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.red)
                                Text("672")
                                
                            }
                        }
                    }
                    
                }
                Button(action: {
                    let overLayer = ViewController()
                    overLayer.appear()
                    
                },label: {Image("plus").resizable().frame(width: 40, height: 40)}).padding(.top)
            
            .navigationTitle("Potfolio")
                
            }
        }
    }

