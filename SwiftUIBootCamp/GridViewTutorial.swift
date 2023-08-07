//
//  GridViewTutorial.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 03/08/2023.
//

import SwiftUI

struct GridViewTutorial: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let imageDimension = UIScreen.main.bounds.width / 3;
    
    let imgArray = ["J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10", "J11", "J12" ]
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                    Spacer()
                    Text("Jesus Christ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                        .font(.caption)
                    Spacer()
                }
                
                HStack {
                    Image("J1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 32) {
                        VStack(spacing: 3) {
                            Text("Infinite")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            Text("Posts")
                                .font(.caption)
                        }
                        
                        VStack(spacing: 3) {
                            Text("Infinite")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            Text("Followers")
                                .font(.caption)
                        }
                        VStack(spacing: 3) {
                            Text("All")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            Text("Following")
                                .font(.caption)
                        }
                    }
                    
                    
                }
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Jesus - light of the world")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("www.jesustheway.com")
                        .font(.caption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 4)
                
                HStack(spacing: -8) {
                    Image("J5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    
                    Image("J5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    
                    Image("J5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    
                    HStack(spacing: 2) {
                        Text("Followed by")
                        Text("Adeolu David")
                            .fontWeight(.semibold)
                        Text("and")
                        Text("others Christians")
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .padding(.leading)
                    Spacer()
                }
                
                HStack {
                    
                    Text("Following")
                        .font(.footnote)
                        .padding(.horizontal,20)
                        .padding(.vertical, 6)
                        .fontWeight(.semibold)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color(.systemGray5)))
                    
                    Spacer()
                    Text("Messages")
                        .font(.footnote)
                        .padding(.horizontal,20)
                        .padding(.vertical, 6)
                        .fontWeight(.semibold)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color(.systemGray5)))
                    Spacer()
                    Image(systemName: "person.badge.plus")
                        .font(.footnote)
                        .padding(.horizontal,20)
                        .padding(.vertical, 6)
                        .fontWeight(.semibold)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color(.systemGray4)))
                }
                
                HStack {
                    Spacer()
                    Image(systemName: "squareshape.split.3x3")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "play.rectangle")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "play")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "person.crop.square")
                        .font(.title2)
                    Spacer()
                }
                .foregroundColor(Color(.darkGray))
                .padding(.vertical, 8)
                
                
                LazyVGrid(columns: columns) {
                    
                    ForEach(imgArray, id:\.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: imageDimension, height: imageDimension)
                            .border(Color.white)
                            .clipped()
                        
                    }
                }
            }
            
            .padding(8)
        }
    }
}

struct GridViewTutorial_Previews: PreviewProvider {
    static var previews: some View {
        GridViewTutorial()
    }
}
