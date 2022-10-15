//
//  tabView.swift
//  project
//
//  Created by Admin on 10/13/22.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        NavigationView{
            
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                ContentView().tabItem{
                    Label(title: {Text("first")}, icon: {Image(systemName: "person") }).tag(1)
                }
                secondPageView().tabItem{
                    Label(title: {Text("second")}, icon: {Image(systemName: "menucard") }).tag(2)
                }
                fourthPageView().tabItem{
                    Label(title: {Text("third")}, icon: {Image(systemName: "list.bullet.rectangle.portrait") }).tag(3)
                }
            }
        }
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
