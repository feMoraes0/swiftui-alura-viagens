//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Fernando Moraes on 09/06/22.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    
    func isHorizontalSizeCompact() -> Bool {
        return self.horizontalSizeClass == .compact;
    }
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("alura viagens")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: self.isHorizontalSizeCompact() ? 20 : 30))
                    Text("ESPECIAL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: self.isHorizontalSizeCompact() ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: self.isHorizontalSizeCompact() ? 23 : 33))
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
                .offset(y: -35)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
