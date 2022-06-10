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
                HeaderView()
                    .frame(width: view.size.width, height: 200, alignment: .top)
                List(viagens) { viagem in
                    CelulaViagemView(viagem: viagem)
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
