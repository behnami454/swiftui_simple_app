//
//  secondPageCardTwoView.swift
//  project
//
//  Created by Admin on 10/14/22.
//

import SwiftUI

struct secondPageCardTwoView: View {
    @State private var showingAlert = false
    @State var showingPopup = false
    
    var body: some View {
        
        VStack{
            
            Section{
                Image("2017-10-22-5843")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .padding()
                Text("Image")
                    .font(.title2)
                    .fontWeight(.medium)
                ZStack {
                    Button(" Tab For Details  ") {
                        showingPopup = true // 2
                    }
                    .padding([.top, .trailing], 3.0)
                    .frame(height: 40.0)
                    .hoverEffect(/*@START_MENU_TOKEN@*/.highlight/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.015, brightness: 0.213)/*@END_MENU_TOKEN@*/)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                }
                .popover(isPresented: $showingPopup) { // 3
                    ZStack { // 4
                        secondPagePopUpView()
                    }
                }
                
                Menu("Links  ") {
                    Link("link website", destination: URL(string: "https://www.google.com")!)
                    Link("link website2", destination: URL(string: "https://www.google.com")!)
                    
                }.frame(height: 40.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.962, brightness: 0.438)/*@END_MENU_TOKEN@*/)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
            }
        }
        
    }
    struct secondPageCardTwoView_Previews: PreviewProvider {
        static var previews: some View {
            secondPageCardTwoView()
        }
    }
}
