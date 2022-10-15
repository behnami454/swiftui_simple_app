//
//  secondPageView.swift
//  project
//
//  Created by Admin on 10/13/22.
//

import SwiftUI

struct secondPageView: View {
    var body: some View {
        ZStack {
            VStack{
                Text("Second Page")
                    .font(.headline)
                ScrollView{
                    VStack{
                        Text("First Card")
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(1..<10){
                                    i in secondPageCardView()
                                }
                            }
                        }
                        Divider()
                            .padding(.bottom)
                            .frame(height: 20)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                        Text("Second Card")
                            .padding(.top)
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(1..<10){
                                    i in secondPageCardTwoView()
                                }
                            }
                        }
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

struct secondPageView_Previews: PreviewProvider {
    static var previews: some View {
        secondPageView()
    }
}
