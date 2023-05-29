//
//  ProfileView.swift
//  banco
//
//  Created by IMAC 19 on 25/05/23.
//



import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            Text("Mr. Alex").padding(.vertical, 20.0).font(.largeTitle)
            Divider()
            Spacer()
            GroupBox(label: Text("Correo electronico")) {
                Text("alfredo@gmail.com")
                    .padding(.top, 5.0)
                    .frame(width: .infinity, alignment: .trailing)

            }
            GroupBox(label: Text("Clabe Interbancaria")) {
                Text("123456789987654")
                    .padding(.top, 5.0)
                    .frame(width: .infinity, alignment: .trailing)
            }
            GroupBox(label: Text("Telefono")) {
                Text("9981302083")
                    .padding(.top, 5.0)
                    .frame(width: .infinity, alignment: .trailing)
            }
            GroupBox(label: Text("Contraseña")) {
                Button("Cambiar contraseña"){
                    print("Cambiar contraseña")

                }.padding(.top, 5.0)
                .frame(width: .infinity, alignment: .trailing)


            }
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
