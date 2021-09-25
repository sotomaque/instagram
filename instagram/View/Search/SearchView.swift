//
//  SearchView.swift
//  instagram
//
//  Created by Enrique Sotomayor on 9/22/21.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var isSearchMode = false
    
    var body: some View {
        
        ScrollView {
            Text("SearchView")
            // search bar
            SearchBar(text: $searchText, isEditing: $isSearchMode)
                .padding()
            
            // grid view / user-list view
            ZStack {
                if isSearchMode {
                    UserListView()
                } else {
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
