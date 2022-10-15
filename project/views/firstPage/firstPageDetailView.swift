//
//  firstPageDetailView.swift
//  project
//
//  Created by Admin on 10/13/22.
//

import SwiftUI

struct firstPageDetailView: View {
    
    let firstPageModel: firstPageModel
    var body: some View {
        
        let firstPageUsers = firstPageModel.email
        VStack{
            Image("email")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding()
            Text("the Email of this user is :")
                .font(.callout)
                .padding(.bottom, 2.0)
            Text(firstPageUsers)
                .font(.headline)
            Spacer()
        }
    }
}

struct firstPageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        firstPageDetailView(firstPageModel: firstPageModel(id: 1, name: "randy", email: "randy@gmail.com", company: .init(name: "randy company")))
    }
}
