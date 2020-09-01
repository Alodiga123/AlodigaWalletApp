//
//  SecondView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/31/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import SwiftUI

struct MainViewLogged: View {

    @State var showMenu = false

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                ShowMainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width/2)
                        .transition(.move(edge: .leading))
                }
                }.gesture(
                    DragGesture()
                        .onEnded {
                            if $0.translation.width < -100 {
                                withAnimation {
                                    self.showMenu = false
                                }
                            }
                        }
                )
            .navigationBarTitle("Second View", displayMode: .inline)
            .navigationBarItems(leading:
                HStack {
                    Text("")
                }, trailing:
                HStack {
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                            }
                        })
                        {
                            Text("...")
                        }
                    }
            )
            
        }
        
    }
}



struct ShowMainView: View {
    @Binding var showMenu: Bool
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
     }) {
         Text("Show Menu")
     }
   }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewLogged()
    }
}
