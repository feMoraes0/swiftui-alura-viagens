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
                        .padding(.top, self.isHorizontalSizeCompact() ? 0 : 80)
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
                .frame(width: view.size.width, height: self.isHorizontalSizeCompact() ? 200 : 280, alignment: .top)
                .background(.purple)
                
                HStack {
                    Button("Hotéis") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.custom("Avenir Medium", size: self.isHorizontalSizeCompact() ? 17 : 24))
                    .foregroundColor(.white)
                    .frame(width: self.isHorizontalSizeCompact() ? 100 : 150, height: self.isHorizontalSizeCompact() ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
                    .background(.blue)
                    .offset(x: self.isHorizontalSizeCompact() ? 50 : view.size.width / 4)
                    
                    Spacer()

                    Button("Pacotes") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Avenir Medium", size: self.isHorizontalSizeCompact() ? 17 : 24))
                    .foregroundColor(.white)
                    .frame(width: self.isHorizontalSizeCompact() ? 100 : 150, height: self.isHorizontalSizeCompact() ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
                    .background(.orange)
                    .offset(x: self.isHorizontalSizeCompact() ? -50 : -view.size.width / 4)
                }
                .offset(y: self.isHorizontalSizeCompact() ? -35 : -50)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 230))
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 340))
.previewInterfaceOrientation(.landscapeRight)
        }
    }
}
