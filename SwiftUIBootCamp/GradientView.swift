//
//  GradientView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 30/07/2023.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(colors: [.blue, .purple], startPoint: UnitPoint.topLeading, endPoint: .bottomTrailing))
            .padding(1.0)
//            .frame(width: 300, height: 100)
            .cornerRadius(16)
            .ignoresSafeArea()
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
            .preferredColorScheme(.light)
    }
}
