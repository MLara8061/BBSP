//
//  SwiftUIView.swift
//  OURBANK
//
//  Created by IMAC 20 on 18/05/23.
//

import SwiftUI

struct Login: View {
    @State private var username: String = ""
        @State private var password: String = ""
    @State private var keep: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                        Text("Welcome")
                            .font(.title)
                            .padding(.bottom, 50)
                        
                        TextField("User", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                            NavigationLink(destination: ShowCardsView()){
                                
                                    Text("Login")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: 200)
                                        .background(Color.gray)
                                        .cornerRadius(10)
                                
                            }
                            .padding(.vertical, 20).simultaneousGesture(TapGesture().onEnded{
                                print("Push")
                                UserDefaults.standard.set(username, forKey: "user")
                                UserDefaults.standard.set(password, forKey: "pass")
                                print("Saved")
                            })
                Toggle(isOn: $keep){
                    Text("Mantener sesion")
                }
                            
                HStack{
                    Text("Don't you have an account?")
                    Text("Register Now").foregroundColor(.blue)
                }
                    }
                    .padding()
            
        }.onDisappear{
            username = ""
            password = ""
        }
    }
        
    

}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
