//
//  InfoView.swift
//  BethCard
//
//  Created by Mary Arnold on 7/14/20.
//  Copyright © 2020 Beth Arnold. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        Capsule()
            .frame( height: 50)
            .foregroundColor(Color.init(red: 0.70, green: 0.22, blue: 0.22))
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
