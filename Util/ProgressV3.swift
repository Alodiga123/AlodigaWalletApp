//
//  ProgressV3.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 12/9/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
import  SwiftUI

struct Loader : View {
    @State var animate = false
    
    var body: some View {
        VStack(spacing: 28){
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(AngularGradient(gradient: .init(colors: [Color.placeholderGrayColor, Color.placeholderGrayColor.opacity(0)]), center: .center ),style: StrokeStyle(lineWidth: 8, lineCap: .round))
                .frame(width: 150, height: 40 )
                .rotationEffect(.init(degrees: animate ? 360 : 0))
                //.animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
            
            Text("Cargando")
                .fontWeight(.bold)
                
            
        }.padding(.vertical,25)
        .padding(.horizontal,35)
        .background(BlurView())
        .cornerRadius(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear{
            self.animate.toggle()
        }
     
    }
    
}
