//
//  ContentView.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
        ScrollView {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(productList, id: \.id) {
                Product in ProductView(product: Product)
            }
        }.padding()
        }
        .navigationBarTitle(Text("Tshirt Shop"))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
