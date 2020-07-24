//
//  PortfolioView.swift
//  BethCard
//
//  Created by Mary Arnold on 7/23/20.
//  Copyright © 2020 Beth Arnold. All rights reserved.
//

import SwiftUI
import Combine

struct PortfolioView: View {
    @EnvironmentObject var env : MyAppEnvironmentData
    
    var body: some View {
        
        return ZStack {
            AngularGradient(gradient: Gradient(colors: [.black, .black, .gray, .black, .black, .gray, .black]), center: .center)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Text("My Portfolio")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    Group {
                        VStack {
                            Image("topSecretStamp")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350, height: 225)
                            
                            InfoView(text: "Secrets - Web App", imageName: "desktopcomputer")
                            //                            HStack{
                            //                                InfoView(text: "View App", imageName: "")
                            //                                InfoView(text: "View Code", imageName: "")
                            //                            }
                        }
                    }
                    .padding(.top, 20)
                    
                    Group {
                        VStack {
                            Image("todo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 350, height: 200)
                                .padding(.bottom, 20)
                            InfoView(text: "Todoey - iOS App", imageName:  "apps.iphone")
                        }
                    }
                    .padding(.top, 20)
                    Group {
                        VStack {
                            Image("natours")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 350, height: 150)
                            //                                .padding(.bottom, 30)
                            InfoView(text: "Natours - Web App", imageName: "desktopcomputer")
                        }
                    }
                    .padding(.top, 20)
                    Group {
                        VStack {
                            Image("movie")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350, height: 275)
                            //                                .padding(.bottom, 30)
                            InfoView(text: "Movie Finder - Web App", imageName: "desktopcomputer")
                        }
                    }
                    .padding(.top, 20)
                }
            }
        }
    }
}




struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
