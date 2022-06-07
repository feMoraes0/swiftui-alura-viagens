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
            Text("ESPECIAL")
            Text("BRASIL")
                .bold()
            
            List {
                Text("Rio de janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("São Paulo")
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
