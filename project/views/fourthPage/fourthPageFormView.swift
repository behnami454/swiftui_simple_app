//
//  fourthPageFormView.swift
//  project
//
//  Created by Admin on 10/14/22.
//

import SwiftUI

struct fourthPageFormView: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var address: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            VStack{
                Text("Third Page")
                Image("images")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .padding()
                Form {
                    Label(title: {
                        Text("Contact us via this form")
                    }, icon:{Image(systemName: "list.bullet.rectangle.portrait") } )
                    Section{
                        TextField("Username", text: $username)    .multilineTextAlignment(.center)
                        TextField("email", text: $email)    .multilineTextAlignment(.center)
                        TextField("address", text: $address)    .multilineTextAlignment(.center)
                        SecureField("password", text: $password)    .multilineTextAlignment(.center)
                        
                    }
                    Button("send"){}
                        .offset(x: 155, y: 0)
                }
            }
        }
    }
}

struct fourthPageFormView_Previews: PreviewProvider {
    static var previews: some View {
        fourthPageFormView()
    }
}
