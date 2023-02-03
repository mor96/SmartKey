//
//  LoginView.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var showSignUpView = false
    @State private var logUser = false
    @State private var error: String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                //                Color.blue.ignoresSafeArea()
                //                Circle().scale(1.7)
                //                    .foregroundColor(.white.opacity(0.15))
                //                Circle().scale(1.25).foregroundColor(.white)
                Rectangle().foregroundColor(.init(red: 0.02, green: 0.08, blue: 0.4))
                    .padding([.bottom], 490)
                    .ignoresSafeArea()
                
                Image(systemName: "building.2.crop.circle").resizable().frame(width: 250, height: 250)
                    .padding([.bottom], 640)
                    .foregroundColor(.white)
                Text("SmartKey")
                    .font(
                        .custom(
                            "Comfortaa",
                            fixedSize: 54)
                        .weight(.black)
                    )
                    . foregroundColor(.white)
                    .padding([.bottom], 240)
                
                
                
                
                VStack {
                    
                    TextField("Username", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))
                    //                    Button("Login"){
                    //                        //Authenticate
                    ////                        authenticateUser(username: username, password: password)
                    //                        Login(username: email, password: password)
                    //                    }
                    //                    .foregroundColor(.white)
                    //                    .frame(width: 300, height: 50)
                    //                    .background(Color.init(red: 0.02, green: 0.08, blue: 0.4))
                    //                    .cornerRadius(10)
                    //                    .padding([.top], 20)
                    
                    Button(action: {
                        Auth.auth().signIn(withEmail: self.email, password: self.password) { (result, error) in
                            if error != nil {
                                self.error = error!.localizedDescription
                            } else {
                                self.logUser = true
                            }
                        }
                    }) {
                        Text("Sign In")
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.init(red: 0.02, green: 0.08, blue: 0.4))
                    .cornerRadius(10)
                    .padding([.top], 20)
                    
                    Text(error).foregroundColor(.red)
                    
                    Button(action: {
                        showSignUpView = true
                    }) {
                        Text("Sign Up")
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.init(red: 0.02, green: 0.08, blue: 0.4))
                    .cornerRadius(10)
                    
                    
//                    Button(destination: SignUpView()) {
//                        Text("Sign Up")
//                            .foregroundColor(.white)
//                            .frame(width: 300, height: 50)
//                            .background(Color.init(red: 0.02, green: 0.08, blue: 0.4))
//                            .cornerRadius(10)
//                    }
                    
                    
                    
                    
                    
                    NavigationLink(destination: AppTapBarView(), isActive: $logUser){
                    }
                    
                    NavigationLink(destination: SignUpView(), isActive: $showSignUpView){
                    }
                    
                    
                    
                    
                    
                }
                .padding([.top], 200)
            }
        }
        //.navigationBarHidden(true)
    }
    
    func authenticateUser(username: String, password: String){
        if username.lowercased() == "z"{
            wrongUsername = 0
            if password.lowercased() == "z"{
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
    
    func Login(username: String, password: String) {
        Auth.auth().signIn(withEmail: username, password: password) { (result, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
                LoginView()
            }.environmentObject(PortfolioViewModel())
            
        }
    }
}
