//
//  TransferenceView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/31/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TransferenceView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TransferenceViewAccess()
                }
            }.navigationBarTitle("Transference", displayMode: .inline)
        }
    }
}

struct TransferenceViewAccess: View {
    @State var user: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelTransference()
                        }.padding(.leading,20)
                         .padding(.trailing,20)
                        TextLabelCurrency()
                        TextLabelUserR()
                        EmailTextField(user: self.$user)
                        NavigationLink(destination: TargetCustomerView()) {
                            TransferenceSerchButtonContent()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            TransferenceBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelTransference: View {
    var body: some View {
        Text("Transference")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}


struct dropDown : View {
    @State var expand = false
    @State var select = "Selecione una opcion"
    var body: some View{
        VStack{
            Spacer()
            VStack(spacing: 30){
                HStack{
                    Text(select).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                        
                
                }.frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
                .onTapGesture{
                    self.expand.toggle()
                }
                if expand {
                    Button(action: {
                        print("1")
                        select = "Profile"
                        self.expand.toggle()
                    }) {
                        Text("Profile").padding(10)
                    }.foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
                 
                    Button(action: {
                        print("2")
                        select = "Profile2"
                        self.expand.toggle()
                    }) {
                        Text("Profile2").padding(10)
                    }.foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
                    
                    Button(action: {
                        print("3")
                        select = "Profile3"
                        self.expand.toggle()
                    }) {
                        Text("Profile3").padding(10)
                    }.foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
                }
            }.padding()
            //.background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
            .background(Color.colorMain)
            .cornerRadius(15)
            .shadow(color: .gray, radius: 5)
            .animation(.spring())
        }
    }
}

struct TextLabelCurrency: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("CurrencyTransfer")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            
            dropDown()
        }
    }
}

struct TextLabelUserR: View {
    var body: some View {
        Text("SearchCriteria")
            .font(.callout)
            .frame(width: 340, height: 50, alignment: .leading)
            .foregroundColor(.gray)
    }
}


struct EmailTextField: View {
    @Binding var user: String
    var body: some View {
        FloatingLabelTextField($user, placeholder: "", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("email")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct TransferenceSerchButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Search")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct TransferenceBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,15)
    }
}

struct TransferenceView_Previews: PreviewProvider {
    static var previews: some View {
        TransferenceView()
    }
}

