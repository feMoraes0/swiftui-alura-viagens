//
//  ContentView.swift
//  alura-viagens
//
//  Created by Fernando Moraes on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    
    func isHorizontalSizeCompact() -> Bool {
        return self.horizontalSizeClass == .compact;
    }
    
    var body: some View {
        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: self.isHorizontalSizeCompact() ? 200 : 315, alignment: .top)
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
