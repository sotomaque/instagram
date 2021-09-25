//
//  UserCell.swift
//  instagram
//
//  Created by Enrique Sotomayor on 9/24/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("seattle-2")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack (alignment: .leading) {
                Text("username")
                    .font(.system(size: 14, weight: .semibold))
                Text("full name")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
