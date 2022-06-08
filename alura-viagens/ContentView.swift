//
//  ContentView.swift
//  alura-viagens
//
//  Created by Fernando Moraes on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            
            List {
                Text("Rio de janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("São Paulo")
            }
            
        }
        .background(.purple)
    }
}

// Serve somente para visualização da preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
