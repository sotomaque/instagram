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
            .padding([.leading, .bottom], 8)
            // Image
            Image("seattle-2")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 440)
                .clipped()
            // Action Buttons
            HStack(spacing: 16) {
                // Like Button
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                      
                }
                // Comment Button
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                      
                }
                // Send Button
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                      
                }
            }
            .foregroundColor(.black)
            .padding(.leading, 4)
            
            // Caption + Details
            Text("3 likes").font(.system(size: 14, weight: .semibold))
                .padding(.leading, 4)
                .padding(.bottom, 2)
            
            HStack {
                Text("Batman").font(.system(size: 14, weight: .semibold)) + Text(" All men have limimtes. They learn what they are and learn not to exceed them. I ignore mine")
            }
            .padding(.horizontal, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 2)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
