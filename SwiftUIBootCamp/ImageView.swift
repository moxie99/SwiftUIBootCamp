//
//  ImageView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 30/07/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("img2")
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30)
            .clipShape(Circle())
        
        
        Image("img1")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 50)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
