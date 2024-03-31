//
//  SearchView.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-26.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("Search", text: $search)
                    .padding()
                    .onChange(of: search, perform: { searchText in
                        // Perform search action here, e.g., filter products based on search text
                        print("Perform search for: \(searchText)")
                    })
            }
            .background(Color("Secondary"))
            .cornerRadius(12)
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("primary"))
                .cornerRadius(12)
            
        }
        .padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
