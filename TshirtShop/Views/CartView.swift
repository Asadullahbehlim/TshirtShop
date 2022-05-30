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
            
            if ( cartController.products.count>0) {
                ForEach (cartController.products, id: \.id) {
                    Product in
                    ProductCartPage(product: Product)
                } // For Each
                
                HStack {
                Text("Your Cart Total is ")
                        .font(.title2)
                        .fontWeight(.bold)
                Spacer()
                Text("$\(cartController.total).00")
                        .font(.title2)
                    .bold()
                } // Hstack
                .padding()
                
                PaymentButton()
                    .padding()
                
            } // If
            
            else {
                Text ("Your cart Is Empty")
                    .font(.title2)
                    .fontWeight(.bold)
                
            } // Else
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    } // Body
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartController())
    }
}


