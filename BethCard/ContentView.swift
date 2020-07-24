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
import Combine


enum MyAppPage {
    case Content
    case Portfolio
}

final class MyAppEnvironmentData: ObservableObject {
    @Published var currentPage : MyAppPage? = .Content
}

struct NavigationTest: View {

    var body: some View {
        NavigationView {
            ContentView()
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var env : MyAppEnvironmentData
    
    var body: some View {
        let navlink = NavigationLink(destination: PortfolioView(),
                      tag: .Portfolio,
                      selection: $env.currentPage,
                      label: { EmptyView() })

            return ZStack {
                navlink
                .frame(width: 0, height: 0)
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
                    .padding(.top, 75)
                
                Text("Mary 'Beth' Arnold")
                    .font(Font.custom("Tangerine-Bold", size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer & Full Stack")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                Text("Web App Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 22))

                Spacer()
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
                VStack {
                    
                    Button(action: {
                        self.env.currentPage = .Portfolio

                    }) {
                        InfoView(text: "Portfilio Projects", imageName: "chevron.left.slash.chevron.right")
                    }
                }

                Spacer()
                
                HStack {
                    VStack {
                        Button(action: {
                            
                            guard let github = URL(string: "https://github.com/BETH-A"),
                                UIApplication.shared.canOpenURL(github) else {
                                    return
                            }
                            UIApplication.shared.open(github, options: [:], completionHandler: nil)
                        }) {
                            
                            Image("github1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 75, height: 75)
                                .padding(.horizontal, 50)
                                .foregroundColor(.white)
                        }
                    }
                    
                    VStack {
                        Button(action: {
                            
                            guard let github = URL(string: "https://www.linkedin.com/in/beth-arnold-640170153/"),
                                UIApplication.shared.canOpenURL(github) else {
                                    return
                            }
                            UIApplication.shared.open(github, options: [:], completionHandler: nil)
                        }) {
                            
                            Image("logoLinkedIn")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .padding(.horizontal, 50)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.bottom, 30)
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

