//
//  ContentView.swift
//  BethCard
//
//  Created by Mary Arnold on 7/13/20.
//  Copyright © 2020 Beth Arnold. All rights reserved.
//

import SwiftUI
import CallKit
import MessageUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.black, .black, .gray, .black, .black, .gray, .black]), center: .center)
                //            Color(red: 0.28, green: 0.33, blue: 0.38, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("beth2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Ellipse())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Mary 'Beth' Arnold")
                    .font(Font.custom("Tangerine-Bold", size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS & Full Stack ")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                Text("Web App Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                Divider()
                VStack {
                    //Press phone button to call me
                    Button(action: {
                        let cleanString = "3174420816"
                        
                        let tel = "tel://"
                        let formattedString = tel + cleanString
                        let url: NSURL = URL(string: formattedString)! as NSURL
                        
                        UIApplication.shared.open(url as URL)
                        
                    }) {
                        //Button contents
                        InfoView(text: "317-442-0816", imageName: "phone.fill")
                    }
                }
                VStack {
                    Button(action: {
                        let email = "elizabeth78@me.com"
                        if let url = URL(string: "mailto:\(email)") {
                            if #available(iOS 10.0, *) {
                                UIApplication.shared.open(url)
                            } else {
                                UIApplication.shared.openURL(url)
                            }
                        }
                    }) {
                        InfoView(text: "elizabeth78@me.com", imageName: "envelope.fill")
                    }
                }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
