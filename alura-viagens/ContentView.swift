//
//  ContentView.swift
//  alura-viagens
//
//  Created by Fernando Moraes on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("alura viagens")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 20))
                    Text("ESPECIAL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(.purple)
                
                HStack {
                    Button("Hotéis") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.custom("Avenir Medium", size: 17))
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
                    .background(.blue)
                    .offset(x: 50)
                    
                    Spacer()

                    Button("Pacotes") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Avenir Medium", size: 17))
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
                    .background(.orange)
                    .offset(x: -50)
                }
                .offset(x: 0, y: -35)
                
                
                List(viagens) { viagem in
                    VStack(alignment: .leading) {
                        Text(viagem.titulo)
                        Image(viagem.imagem)
                            .resizable()
                            .frame(height: 125)
                        HStack {
                            Text(viagem.quantidadeDeDias)
                            Spacer()
                            Text(viagem.valor)
                        }
                    }
                    
                }
            }
            
        }
    }
}

// Serve somente para visualização da preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
