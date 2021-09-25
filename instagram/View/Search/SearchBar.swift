//
//  SearchBar.swift
//  instagram
//
//  Created by Enrique Sotomayor on 9/22/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            searchField()
            
            if (isEditing) {
                cancelButton()
            }
        }
    }
    
    // MARK: COMPONENTS
    func searchField() -> some View {
        TextField("Search...", text: $text)
            .padding(8)
            .padding(.horizontal, 24)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                        
                }
            )
            .onTapGesture {
                isEditing = true
            }
    }
    
    func cancelButton() -> some View {
        Button {
            isEditing = false
            text = ""
            UIApplication.shared.endEditing()
        } label: {
            Text("Cancel")
                .foregroundColor(.black)
        }
        .padding(.trailing, 8)
        .transition(.move(edge: .trailing))
        .animation(.default)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Text "), isEditing: .constant(true))
    }
}
