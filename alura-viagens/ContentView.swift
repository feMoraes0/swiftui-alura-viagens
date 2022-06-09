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

// Serve somente para visualização da preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
