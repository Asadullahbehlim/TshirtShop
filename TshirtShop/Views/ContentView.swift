//
//  ContentView.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 23/05/22.
//


import SwiftUI

struct ContentView: View {
    @StateObject var cartController = CartController()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach (productList, id: \.id) {
                        Product in ProductPage(product: Product)
                            .environmentObject(cartController)
                    }
                }.padding()
            }
            
            .navigationTitle(Text("Tshirt Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartController)
                } label: {
                    CartButton(numberOfProducts: cartController.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
