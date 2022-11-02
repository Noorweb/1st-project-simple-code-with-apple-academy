//
//  SearchBar.swift
//  test11
//
//  Created by TWQ Test on 05/04/1444 AH.


import SwiftUI

struct SearchBar: View {
    @State private var query: String = "searh"
    var body: some View {
        
        NavigationView {
            ContentView() }
    .searchable(text: $query, prompt: "Search")
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
