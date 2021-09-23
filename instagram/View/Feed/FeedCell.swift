//
//  FeedCell.swift
//  instagram
//
//  Created by Enrique Sotomayor on 9/22/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading ) {
            // Profile Image + Name
            HStack {
                Image("seattle-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Enrique")
                    .font(.system(size: 14, weight: .semibold))
            }
            // Image
            Image("seattle-2")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 440)
                .clipped()
            // Action Buttons
            HStack(spacing: 8) {
                // Like Button
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                      
                }
                // Comment Button
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                      
                }
                // Send Button
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                      
                }
            }
            .foregroundColor(.black)
            // Caption + Details
            HStack {
                Text("Batman").font(.system(size: 14, weight: .semibold)) + Text(" All men have limimtes. They learn what they are and learn not to exceed them. I ignore mine")
                
                Text("2d")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.top)
            }
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
