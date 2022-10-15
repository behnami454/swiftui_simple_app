//
//  firstPageView.swift
//  project
//
//  Created by Admin on 10/12/22.
//

import SwiftUI

struct firstPageView: View {
    
    let firstPageModel : firstPageModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            NavigationLink(destination:
                            firstPageDetailView(firstPageModel : firstPageModel)){
                EmptyView()
            }
            Text("**name** : \(firstPageModel.name)")
                .font(.title3)
                .padding(1.0)
            Text("**company** : \(firstPageModel.company.name)")
                .font(.title3)
                .padding(1.0)
            Text("tab to see the email")
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding(3.0)
                .offset(x:90.0, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
        }
        .frame(maxWidth: .infinity,
               alignment: .leading)
        .padding()
        .background(Color(hue: 1.0, saturation: 0.011, brightness: 0.94, opacity: 0.742), in: RoundedRectangle(cornerRadius: 10 , style: .continuous))
        .padding(3)
        .border(Color.gray, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
        .cornerRadius(18)
        .shadow(radius: 5)
        .padding(.all)
    }
}

struct firstPageView_Previews: PreviewProvider {
    static var previews: some View {
        firstPageView(firstPageModel: .init(id: 0, name: "john", email: "john@gmail.com", company: .init(name: "john company")))
    }
}
