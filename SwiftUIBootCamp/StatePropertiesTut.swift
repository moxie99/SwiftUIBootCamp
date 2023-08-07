//
//  StatePropertiesTut.swift
//  SwiftUIBootCamp
//
//  Created by Mac on 03/08/2023.
//

import SwiftUI

struct StatePropertiesTut: View {
    
    @State var count = 0
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button{
                    if count > 0 {
                        count = count - 1
                    }
                } label: {
                    Text("-")
                        .offset(y: -2)
                        .font(.largeTitle)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
            }
                
                Text(String(count))
                    .font(.largeTitle)
                
                Button{
                    count = count + 1
                } label: {
                    Text("+")
                        .offset(y: -2)
                        .font(.largeTitle)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
            }
            
            Divider()
            
            
            
        }
        
        
        
        
       
    }
}

struct StatePropertiesTut_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertiesTut()
    }
}
