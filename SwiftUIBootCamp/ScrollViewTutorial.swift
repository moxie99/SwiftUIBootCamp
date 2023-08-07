//
//  ScrollView.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 03/08/2023.
//

import SwiftUI

struct ScrollViewTutorial: View {
    let imgArray = ["img4", "img5", "img6", "img7", "img8", "img9", "img10", "img11", "img12", "img13", "img14", "img15", "img17"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Meals close to you...")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(imgArray, id: \.self) {img in
                        VStack {
                            Image(img)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 160)
                                .clipped()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Colombia - USA")
                                        .font(.system(size: 14))
                                        .fontWeight(.semibold)
                                    Text("Colombia - USA")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    
                                }
                                Spacer()
                                Text("4.4")
                                    .font(.caption)
                                    .padding(6)
                                    .background(Color(.systemGray5))
                                    .clipShape(Circle())
                                
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTutorial()
    }
}
