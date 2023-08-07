//
//  ButtonView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 03/08/2023.
//

import SwiftUI

struct ButtonView: View {
    @State var backgroundColor = Color.blue
    var body: some View {
        VStack {
            
            Button{
                self.backgroundColor = Color.green
            }label:  {
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    )
                    .shadow(radius: 10)
            }
            
            Button {
                self.backgroundColor = Color.purple
            } label: {
                Image(systemName: "bell")
                    .font(.title)
                    .frame(width: 80, height: 80)
                    .background(Color.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
