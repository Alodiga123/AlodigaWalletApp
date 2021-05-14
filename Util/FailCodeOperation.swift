
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct FailCodeOperationView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccesfulRecoverFailViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct SuccesfulRecoverFailViewAccess: View {
    @State var pass: String = ""
    @State var repeatPass: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelFailSuccesfulRecover()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        Spacer()
                        RecoverCheckFailImagine()
                        Spacer()
                        NavigationLink(destination: MainViewLogged()) {
                            EndRecoverButtonFailContents()
                        }
                    
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/3.2)
            }
        }
}


struct TextLabelFailSuccesfulRecover: View {
    var body: some View {
        Text("Fail_code_info")
            .font(.body)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 345, height: 100)
    }
}

struct RecoverCheckFailImagine: View {
    var body: some View {
        Image(systemName: "slash.circle")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 150.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 160)
    }
}

struct EndRecoverButtonFailContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalize")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom, 20)
    }
}



struct SuccesFailfulRecoverView_Previews: PreviewProvider {
    static var previews: some View {
        FailCodeOperationView()
    }
}


