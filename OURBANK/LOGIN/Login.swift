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
    var body: some View {
        
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
                    
                    Button(action: {
                        // Aquí puedes realizar la lógica de inicio de sesión
                        // Por ejemplo, puedes mostrar una alerta si los datos son incorrectos
                        if username == "user" && password == "password" {
                            print("Inicio de sesión exitoso")
                        } else {
                            print("Nombre de usuario o contraseña incorrectos")
                        }
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 200)
                            .background(Color.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 20)
            HStack{
                Text("Don't you have an account?")
                Text("Register Now").foregroundColor(.blue)
            }
                }
                .padding()
        
            }
    

}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
