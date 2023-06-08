//
//  BottomNavBarView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-05.
//

import SwiftUI

struct BottomNavBarView: View {
    let category : Category
    
    
    var body: some View {
        
        VStack {
            VStack{
                
                
                AsyncImage(url: URL(string: "\(category.image)")){ image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 200, maxHeight: 200)
                } placeholder: {
                    Color.gray
                }
                Text("\(category.title)")
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: 140)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .cornerRadius(10)
            
        }
        
        
        
    }
}

