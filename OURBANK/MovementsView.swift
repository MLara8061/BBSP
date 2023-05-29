//
//  MovementsView.swift
//  OURBANK
//
//  Created by IMAC 20 on 22/05/23.
//

import SwiftUI

struct movement: Identifiable {
    let id = UUID()
    var monto: Int
    var fecha: String
    var concepto: String
    var icon: Image
    var status: Int
    // aditional info
    //var referencia: String
    //var cuenta_destino: String
}

struct DetailMovementView: View {
    let item: movement
    var body: some View{
        VStack{
            Text("test")
        }
    }
}


struct MovementsView: View {
    var data = [movement(monto: 100,
                        fecha: "01/01/01",
                        concepto: "Pago Internet",
                        icon: Image(systemName: "checkmark.circle.fill"),
                        status: 0
                                   ),
                movement(monto: 100,
                                    fecha: "01/01/01",
                                    concepto: "Pago Internet",
                                    icon: Image(systemName: "checkmark.circle.fill"),
                                    status: 1),
                movement(monto: 100,
                                    fecha: "01/01/01",
                                    concepto: "Pago Internet",
                                    icon: Image(systemName: "checkmark.circle.fill"),
                                    status: 0),
                movement(monto: 100,
                                    fecha: "01/01/01",
                                    concepto: "Pago Internet",
                                    icon: Image(systemName: "checkmark.circle.fill"),
                                    status: 0),
                movement(monto: 100,
                                    fecha: "01/01/01",
                                    concepto: "Pago Internet",
                                    icon: Image(systemName: "checkmark.circle.fill"),
                                    status: 0),
                movement(monto: 100,
                                    fecha: "01/01/01",
                                    concepto: "Pago Internet",
                                    icon: Image(systemName: "checkmark.circle.fill"),
                                    status: 0),
    ]
    var body: some View{
        NavigationView{
            VStack{
                VStack{
                    HStack{
                        Text("Debito")
                    }
                }
            Spacer()
            List(data){
                d in
                NavigationLink(destination: DetailMovementView(item:d)){
                    VStack{
                        VStack{
                            HStack{
                                Text(d.fecha)
                                Spacer()
                                Text(d.concepto)
                            }
                        }
                        Spacer()
                        VStack{
                            HStack{
                                d.icon
                                Text("$\(String(d.monto))")
                                Spacer()
                                Text(String(d.status))
                            }
                        }
                    }.padding(50).cornerRadius(20).opacity(d.status == 0 ? 1 : 0.3)
                    

                }
                }
            }
        }
        
    }
}

struct MovementsView_Previews: PreviewProvider {
    static var previews: some View {
        MovementsView()
    }
}
