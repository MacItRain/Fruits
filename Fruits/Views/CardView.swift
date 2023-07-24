//
//  CardView.swift
//  Fruits
//
//  Created by 이찬영 on 2023/07/24.
//

import SwiftUI

struct CardView: View {
    
    let color1 : Color
    let color2 : Color
    let fruitImage : String
    
    @State private var isAnimating : Bool = false
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(colors: [color1, color2], startPoint: .topTrailing, endPoint: .bottomLeading))
                .padding([.top, .horizontal])
            
            VStack {
             
                Image(fruitImage)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .padding(.horizontal)
                    
                
                Text("Blueberry")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    .padding(.bottom, 8)
                
                Text("""
                    Blueberries are sweet, nutritious and
                    wildly popular fruit all over the world.
                    """)
                .font(.system(size: 18))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .padding(.bottom)
                .frame(maxWidth: 480)
                
                ZStack {
                    
                    Capsule()
                        .stroke(Color.white)
                        .frame(width: 110, height: 50)
                    
                    HStack {
                        
                        Text("Start")
                        Image(systemName: "arrow.right.circle")
                            .imageScale(.large)
                    }
                    .font(.title2)
                    .foregroundColor(Color.white)
                }
                .onTapGesture {
                    //button (go to onboarding
                }
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(color1: Color.ColorBlueberryLight, color2: Color.ColorblueberryDark, fruitImage: "blueberry")
    }
}
