//
//  ShapesView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 30/07/2023.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        Capsule()
            .fill(.green)
//            .stroke(Color.pink, lineWidth: 5)
            .frame(width: 300, height: 100)
            .cornerRadius(10)
    
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
