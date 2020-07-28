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
                    Text("Hard Press Labels to Activate 3D Touch")
                        .foregroundColor(.white)
                    Group {
                        VStack {
                            Image("topSecretStamp")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350, height: 225)
                            
                            InfoView(text: "Secrets - Web App", imageName: "desktopcomputer")
                                .contextMenu {
                                    Button(action: {
                                        guard let secretsApp = URL(string: "https://secrets-beth.herokuapp.com"),
                                            UIApplication.shared.canOpenURL(secretsApp) else {
                                                return
                                        }
                                        UIApplication.shared.open(secretsApp, options: [:], completionHandler: nil)
                                    }) {
                                        
                                        Text("View App")
                                        Image(systemName: "desktopcomputer")
                                    }
                                    
                                    Button(action: {
                                        guard let secrets = URL(string: "https://github.com/BETH-A/Secrets"),
                                            UIApplication.shared.canOpenURL(secrets) else {
                                                return
                                        }
                                        UIApplication.shared.open(secrets, options: [:], completionHandler: nil)
                                    }) {
                                        Text("View Code")
                                        Image(systemName: "chevron.left.slash.chevron.right")
                                    }
                            }
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
                                .contextMenu {
//                                    Button(action: {
//                                        guard let todoeyApp = URL(string: ""),
//                                            UIApplication.shared.canOpenURL(todoeyApp) else {
//                                                return
//                                        }
//                                        UIApplication.shared.open(todoeyApp, options: [:], completionHandler: nil)
//                                    }) {
//
//                                        Text("View App")
//                                        Image(systemName: "desktopcomputer")
//                                    }
                                    
                                    Button(action: {
                                        guard let todoey = URL(string: "https://github.com/BETH-A/Todoey-iOS13"),
                                            UIApplication.shared.canOpenURL(todoey) else {
                                                return
                                        }
                                        UIApplication.shared.open(todoey, options: [:], completionHandler: nil)
                                    }) {
                                        Text("View Code")
                                        Image(systemName: "chevron.left.slash.chevron.right")
                                    }
                            }
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
                            .contextMenu {
                                    Button(action: {
                                        guard let natoursApp = URL(string: "https://beth-a.github.io/Natours/"),
                                            UIApplication.shared.canOpenURL(natoursApp) else {
                                                return
                                        }
                                        UIApplication.shared.open(natoursApp, options: [:], completionHandler: nil)
                                    }) {
                                        
                                        Text("View App")
                                        Image(systemName: "desktopcomputer")
                                    }
                                    
                                    Button(action: {
                                        guard let natours = URL(string: "https://github.com/BETH-A/Natours"),
                                            UIApplication.shared.canOpenURL(natours) else {
                                                return
                                        }
                                        UIApplication.shared.open(natours, options: [:], completionHandler: nil)
                                    }) {
                                        Text("View Code")
                                        Image(systemName: "chevron.left.slash.chevron.right")
                                    }
                            }
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
                            .contextMenu {
                                    Button(action: {
                                        guard let movieApp = URL(string: "https://beth-a.github.io/Movie-Night/"),
                                            UIApplication.shared.canOpenURL(movieApp) else {
                                                return
                                        }
                                        UIApplication.shared.open(movieApp, options: [:], completionHandler: nil)
                                    }) {
                                        
                                        Text("View App")
                                        Image(systemName: "desktopcomputer")
                                    }
                                    
                                    Button(action: {
                                        guard let movie = URL(string: "https://github.com/BETH-A/Movie-Night"),
                                            UIApplication.shared.canOpenURL(movie) else {
                                                return
                                        }
                                        UIApplication.shared.open(movie, options: [:], completionHandler: nil)
                                    }) {
                                        Text("View Code")
                                        Image(systemName: "chevron.left.slash.chevron.right")
                                    }
                            }
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
