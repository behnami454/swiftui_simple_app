//
//  secondPageCardThreeView.swift
//  project
//
//  Created by Admin on 10/14/22.
//

import SwiftUI

struct secondPageCardThreeView: View {
    @State private var showingAlert = false
    @State var showingPopup = false
    
    var body: some View {
        
        VStack{
            
            Section{
                Image("download")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .padding()
                Text("2017-10-22-5843")
                ZStack {
                    Button("click for full details popppppp upppppp") {
                        showingPopup = true // 2
                    }
                }
                .popover(isPresented: $showingPopup) { // 3
                    ZStack { // 4
                        Text("Popup!")
                    }
                }
                
                Menu("more deatails") {
                    Link("link website", destination: URL(string: "https://www.google.com")!)
                    Link("link website2", destination: URL(string: "https://www.google.com")!)
                    
                }
            }
        }
        
    }
    
    struct secondPageCardThreeView_Previews: PreviewProvider {
        static var previews: some View {
            secondPageCardThreeView()
        }
    }
}
