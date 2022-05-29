//
//  CartView.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 24/05/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartController : CartController
    var body: some View {
        ScrollView {
            Text("Your Cart Is Empty")
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartController())
    }
}
