//
//  ContentView.swift
//  BBSP
//
//  Created by lab imac23 on 18/05/23.
//
import SwiftUI

struct ShowCardsView: View {
    @State var user = UserDefaults.standard.string(forKey: "user") ?? "Albert"
    @State var pass = UserDefaults.standard.string(forKey: "pass") ?? ""
    var body: some View {
        VStack() {
            HStack() {
                Text("Welcome, Mr. "+user)
                Spacer()
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 27, height: 27)
            }
            
            Text("Accounts")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 15)
                .padding()
            
            VStack() {
                GroupBox() {
                    HStack() {
                        Text("Personal").font(.subheadline)
                        Spacer()
                        Text("239").font(.caption)
                    }
                    .frame(maxHeight: 110, alignment: .top)
                    
                    Text("$80,000,000")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                }
                .frame(maxWidth: 290)
                
                GroupBox() {
                    HStack() {
                        Text("Son future").font(.subheadline)
                        Spacer()
                        Text("130").font(.caption)
                    }
                    .frame(maxHeight: 110, alignment: .top)
                    
                    Text("$2,000,000")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                }
                .frame(maxWidth: 290)
                
                GroupBox() {
                    HStack() {
                        Text("Familiar").font(.subheadline)
                        Spacer()
                        Text("230").font(.caption)
                    }
                    .frame(maxHeight: 110, alignment: .top)
                    
                    Text("$10,000,000")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                }
                .frame(maxWidth: 290)
            }
            
            Spacer()
        }
        .padding(.horizontal, 30)
        .padding(.top, 20)
        .onAppear{
            print("Prueba")
            user = UserDefaults.standard.string(forKey: "user") ?? "Albert"
            pass = UserDefaults.standard.string(forKey: "pass") ?? "NA"
        }
    }
}

struct ShowCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowCardsView()
    }
}
