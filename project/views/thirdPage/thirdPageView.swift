//
//  thirdPageView.swift
//  project
//
//  Created by Admin on 10/13/22.
//

import SwiftUI
import UserNotifications

struct thirdPageView: View {
    var body: some View {
        
        VStack{
            
            //            Button("request"){
            //                UNUserNotificationCenter.current().requestAuthorization(options: [.carPlay, .badge, .sound]) {success , error in
            //                    if success {
            //                        //link of the website
            //                        Alert(title: Text("se"))
            //                    }
            //                    else if let error = error{
            //                        print(error.localizedDescription)
            //                    }
            //                }
            //            }
            Button("notification"){
                
                let content = UNMutableNotificationContent()
                content.title = "new message"
                content.subtitle = "sonfobitch"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 6, repeats: false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct thirdPageView_Previews: PreviewProvider {
    static var previews: some View {
        thirdPageView()
    }
}
