//
//  Progress.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 12/9/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct HUDProgressView : View {
    var placeHolder : String
    @Binding var show : Bool
    @State var animate = false
    
    var body: some View {
        VStack(spacing: 28){
            Circle()
                .stroke(AngularGradient(gradient: .init(colors: [Color.placeholderGrayColor, Color.placeholderGrayColor.opacity(0)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ ))
                .frame(width: 80, height: 80 )
                .rotationEffect(.init(degrees: animate ? 360 : 0))
            
            Text(placeHolder)
                .fontWeight(.bold)
                
            
        }.padding(.vertical,25)
        .padding(.horizontal,35)
        .background(BlurView())
        .cornerRadius(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.placeholderGrayColor.opacity(0.35).onTapGesture {
            withAnimation{
                animate.toggle()
            }
        }
                     
        ).onAppear{
            withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)){
                show.toggle()
            }
        }
    }
    
}

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context)  {
    }
}


