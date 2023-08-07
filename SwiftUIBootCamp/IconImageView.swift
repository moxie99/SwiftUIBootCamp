//
//  IconImageView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 30/07/2023.
//

import SwiftUI

struct IconImageView: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
//            .font(.largeTitle)
//            .imageScale(.large)
//            .font(.system(size: 200))
            .foregroundColor(Color("ColorScheme"))
            .scaledToFit()
            .frame(width: 200, height: 100)
            .clipped()
    }
}

struct IconImageView_Previews: PreviewProvider {
    static var previews: some View {
        IconImageView()
    }
}
