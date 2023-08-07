//
//  TextView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 30/07/2023.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Faith! The world seems to smile through oyu. Please do not lose your smile")
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .font(.system(size: 14, weight: .black, design: .monospaced))
                .blur(radius: 1)
                .multilineTextAlignment(.leading)
        }
        .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
