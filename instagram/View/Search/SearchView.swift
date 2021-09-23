//
//  SearchView.swift
//  instagram
//
//  Created by Enrique Sotomayor on 9/22/21.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    
    var body: some View {
        
        ScrollView {
            Text("SearchView")
            // search bar
            SearchBar(text: $searchText)
                .padding()
            
            // grid view / user-list view
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
