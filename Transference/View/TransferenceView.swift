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

struct FirstView: View {
    @State var isSheetOpened = false
    @State var selectedProduct = ListadoProductos()
    //var products = Manager()
    @State var products : [ListadoProductos] = []
    @State var expand = false
    @State var separador: String = ""
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
                if (selectedProduct.simbolo != nil){ separador = " - " }
            }) {
                
                Text("\(selectedProduct.nombreProducto + " " + selectedProduct.simbolo + separador + selectedProduct.saldoActual )").fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)                .frame(width: 340, alignment: .leading)
                
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                        
                
            }
            .padding(10)
            .cornerRadius(10)
            .clipShape(Rectangle())
            
            .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
           
            .sheet(isPresented: self.$isSheetOpened) {
                Sheet(products: self.products, isSheetOpened: self.isSheetOpened, selectedProduct: self.$selectedProduct)
            }
            
            //Text("\(selectedProduct)")
        }.onAppear(
            perform: getJSONLogin
        )
    }
    func getJSONLogin() {
        var objetResponse: ObjectLogin
        let str: String = Constant.defaults.value(forKey: "jsonLogin") as! String
        do {
            objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: str.data(using: .utf8)!)
            print("OBJETO DECODE")
            print(objetResponse)
            self.products = objetResponse.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos
        } catch  {
            print("Error: decodificando json")
        }
    }
}

struct Sheet: View {
    var products : [ListadoProductos]
    var isSheetOpened : Bool
    @Binding var selectedProduct: ListadoProductos
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.products, id: \.self) { index in
                    Button(action: {
                        self.selectedProduct = index
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.nombreProducto + " " + index.simbolo + " - " + index.saldoActual).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)                .frame(width: 340, alignment: .leading)

                        
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}


struct TextLabelCurrency: View {
    @State var products : [ListadoProductos] = []
    @State var jsonLogin : ObjectLogin?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("CurrencyTransfer")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            FirstView()
        }
    }
    
    func getJSONLogin() {
        var objetResponse: ObjectLogin
        let str: String = Constant.defaults.value(forKey: "jsonLogin") as! String
        do {
            objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: str.data(using: .utf8)!)
            print("OBJETO DECODE")
            print(objetResponse)

            self.jsonLogin = objetResponse
            self.products = objetResponse.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos
        } catch  {
            print("Error: decodificando json")
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

