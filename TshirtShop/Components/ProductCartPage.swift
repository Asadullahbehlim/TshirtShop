//
//  ProductCartPage.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 29/05/22.
//

import SwiftUI

struct ProductCartPage: View {
    
    // MARK: - Property
    
    @EnvironmentObject var cartController: CartController
    
    var product: Product


    // MARK: - Body

    var body: some View {
        
        HStack(spacing: 20) {
            Image(product.image)
            .resizable()
            .scaledToFit()
            .frame(width: 60)
            .cornerRadius(12)
            
        VStack(alignment: .leading, spacing: 20) {
            Text(product.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text("$\(product.price)")
                .font(.title2)
            
            }
            Spacer()
              
              Image(systemName: "trash")
                .foregroundColor(.accentColor)
                .onTapGesture {
                    cartController.removeFromCart(product: product)
                }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct ProductCartPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductCartPage(product: productList[2])
            .environmentObject(CartController())
    }
}

