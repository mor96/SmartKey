//
//  SignUp.swift
//  SmartKey
//
//  Created by Mor Ohana on 1/31/23.
//

import SwiftUI
import Firebase


struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var error: String = ""
    
    var body: some View {
        NavigationView{
        VStack {
            TextField("Email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 5.0)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 5.0)
            
            Button(action: signUp) {
                Text("Sign Up")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5.0)
            .shadow(radius: 5.0)
            
            Text(error)
                .foregroundColor(.red)
            
            NavigationLink(destination: LoginView()) {
               Text("Already have an account? Login")
                    .bold()
                    .foregroundColor(.black)
            }

            
        }
    }
    }
    
    func signUp() {
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
