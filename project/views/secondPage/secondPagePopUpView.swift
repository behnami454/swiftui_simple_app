//
//  secondPagePopUpView.swift
//  project
//
//  Created by Admin on 10/15/22.
//

import SwiftUI

struct secondPagePopUpView: View {
    var body: some View {
        VStack{
            Image("March-31-M9pt7-flare_131_4k-1024x1024")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding()
            Text("some more details : ")
                .font(.headline)
            Text("these are some information about the second page and they are not mean to be something its just something for showing on the screen and they dont have any value or meaning and i just keep writing for filling it and maybe it has a better view  but all of it is weird and meaningless and just for fun  ")
                .font(.body)
                .padding(.all)
            Spacer()
        }
    }
}

struct secondPagePopUpView_Previews: PreviewProvider {
    static var previews: some View {
        secondPagePopUpView()
    }
}
