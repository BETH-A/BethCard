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
        
        ZStack {
            Text("Page Two").font(.largeTitle).padding()
            
            Text("Go Back")
                .padding()
                .border(Color.primary)
                .onTapGesture {
                    self.env.currentPage = .Content
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
