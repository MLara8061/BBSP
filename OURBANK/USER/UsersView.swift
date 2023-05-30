//
//  UsersView.swift
//  OURBANK
//
//  Created by UPQROO on 29/05/23.
//

import SwiftUI

struct UsersView: View {
    
    @StateObject var uvm: UserViewModel = UserViewModel()
    var body: some View {
        
        VStack {
            Text("Users")
            VStack {
                TextField("Username", text: $uvm.c_username)
                TextField("Password", text: $uvm.c_password)
                Button("save") {
                    uvm.createUser()
                }
            }.padding(50).frame(maxWidth: .infinity, alignment: .center)
            if (uvm.users.count == 0) {
                Text("No hay elementos")
            } else {
                List(uvm.users)
                {
                    user in
                    HStack {
                            Text(user.username ?? "")
                            Text(user.password ?? "")
                        }
                    Button("Delete") {
                        uvm.deleteUser(user: user)
                    }
                    
                    
                }
            }
        }
    }
}

//struct UserListView: View {
  //  var body: some View {
    //    List() {
      //      HStack {
        //        Text("")
          //      Text("")
           // }
        //}
    //}
//}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
