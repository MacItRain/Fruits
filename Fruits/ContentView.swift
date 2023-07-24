//
//  ContentView.swift
//  Fruits
//
//  Created by 이찬영 on 2023/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
         
            CardView(color1: Color.ColorBlueberryLight, color2: Color.ColorblueberryDark, fruitImage: "blueberry")
            
            CardView(color1: Color.ColorBlueberryLight, color2: Color.ColorblueberryDark, fruitImage: "blueberry")
            
            CardView(color1: Color.ColorBlueberryLight, color2: Color.ColorblueberryDark, fruitImage: "blueberry")
            
            CardView(color1: Color.ColorBlueberryLight, color2: Color.ColorblueberryDark, fruitImage: "blueberry")
            
            CardView(color1: Color.ColorBlueberryLight, color2: Color.ColorblueberryDark, fruitImage: "blueberry")
           
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
