//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Fernando Moraes on 09/06/22.
//

import SwiftUI

struct CelulaViagemView: View {
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    
    func isHorizontalSizeCompact() -> Bool {
        return self.horizontalSizeClass == .compact;
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.isHorizontalSizeCompact() ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.isHorizontalSizeCompact() ? 125 : 200)
                .clipped()
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.isHorizontalSizeCompact() ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.isHorizontalSizeCompact() ? 14 : 24))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
    }
}
