//
//  ProfileHeaderView.swift
//  instagram
//
//  Created by Enrique Sotomayor on 11/8/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // profile pic + follower stats row
            HStack {
                Image("seattle-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                .clipShape(Circle())
                
                
                UserStatView(value: 1, label: "Follower")
                
                UserStatView(value: 2, label: "Following")

                UserStatView(value: 9, label: "Posts")

            }
            
           
            // name + bio row
            VStack(alignment: .leading) {
                Text("Enrique Sotomayor")
                    .font(.system(size: 15, weight: .semibold))
                
                Text("Software")
                    .font(.system(size: 15, weight: .light))
            }
            .padding(.top, 4)
   
            // button
            GeometryReader { geometry in
                Button {
                    
                } label: {
                    Spacer()
                    Text("Edit Profile")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: geometry.size.width - 100)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
       
            
            // grid
        }
        .padding()
    }
}


struct UserStatView: View {
    
    @State var value: Int
    @State var label: String
        
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            
            Text(label)
                .font(.system(size: 15))

        }.frame(width: 80, alignment: .center)
    }
}




struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
