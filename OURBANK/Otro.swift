//
//  ContentView.swift
//  OURBANK
//
//  Created by IMAC 20 on 18/05/23.
//

import SwiftUI

struct Otro: View {
    
    @State private var name :
    String = ""
    
    var body: some View {
        VStack{
            Text("Hola mundo").font(.largeTitle).foregroundColor(.white).background(Color.red)
                .padding(1)
            Spacer()
            TextField("Texto", text: $name)
                .font(.largeTitle).foregroundColor(.white).background(Color.green).padding(10)
            Spacer()
            Button("Texto")
            {
                print("Hola")
            }.font(.largeTitle).foregroundColor(.black).background(Color.orange).padding(10)
            Spacer()
                Image(systemName:"person")
                .resizable(capInsets: (EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)))
                .frame(width: 100,height: 100)
                .foregroundColor(Color.red)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Otro()
        }
    }

