//
//  search2.swift
//  test11
//
//  Created by TWQ Test on 05/04/1444 AH.
//

import SwiftUI

struct search2: View {
    @StateObject private var viewModel = SearchViewModel()
        @State private var query = ""
    var body: some View {
        
        
        NavigationView {
                   List(viewModel.repos) { repo in
                       VStack(alignment: .leading) {
                           Text(repo.name)
                               .font(.headline)
                           Text(repo.description ?? "")
                               .foregroundColor(.secondary)
                       }
                   }
                   .navigationTitle("Search")
                   .searchable(text: $query)
                   .onChange(of: query) { newQuery in
                       async { await viewModel.search(matching: query) }
                   }
               }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct search2_Previews: PreviewProvider {
    static var previews: some View {
        search2()
    }
}
