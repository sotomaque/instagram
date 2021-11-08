//
//  NotificationCell.swift
//  instagram
//
//  Created by Enrique Sotomayor on 11/8/21.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = true
    
    
    var body: some View {
        HStack {
            Image("seattle-2")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("Batman").font(.system(size: 14, weight: .semibold)) +
            Text(" liked one of your posts.")
            
            Spacer()
            
            if showPostImage {
                Image("seattle-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }

            }

        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
