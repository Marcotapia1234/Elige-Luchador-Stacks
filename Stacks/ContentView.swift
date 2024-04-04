//
//  ContentView.swift
//  Stacks
//
//  Created by Marco on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CabeceraView()
            HStack(spacing:10){
                LuchadorView(luchador: "Goku", fuerza: "800/1000", trans: "Ultra Instinto", colorTexto: .black, colorFondo: .purple)
                
                
                ZStack {
                    
                    LuchadorView(luchador: "Vegeta", fuerza: "790/1000", trans: "Vegeta Super Saiyan Blue", colorTexto: .blue, colorFondo: Color(red: 240/255, green: 240/255, blue: 240/255))
                    Text("Lo puedes entrenar¡¡")
                        .font(.system(.caption,design:  .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .padding(5)
                        .offset(x: 0, y: 80)
                    
                }
                
                
            }.padding(10)
        }
           
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CabeceraView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            Text("Elige")
                .font(.system(.largeTitle,design: .rounded))
                .foregroundColor(.purple)
                .fontWeight(.black)
            Text("luchador")
                .font(.system(.largeTitle,design: .rounded))
                .foregroundColor(.purple)
                .fontWeight(.black)
        }
    }
}
}

struct LuchadorView: View {
    var luchador: String
    var fuerza: String
    var trans: String
    var colorTexto: Color
    var colorFondo: Color
    
    var body: some View {
        VStack{
            Text(luchador)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(fuerza)
                .font(.system(size: 15, weight: .heavy, design: .rounded))
            
                .foregroundColor(colorTexto)
            
            Text(trans)
                .font(.headline)
            
                .foregroundColor(.black)
            
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 150)
        .padding(40)
        .background(colorFondo)
        .cornerRadius(10)
    }
}
