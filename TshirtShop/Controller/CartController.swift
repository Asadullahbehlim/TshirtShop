//
//  CartController.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 24/05/22.
//

import Foundation

class CartController: ObservableObject {
    @Published   var products: [Product] = []
    @Published   var total: Int = 0

    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{
            $0.id != product.id }
            total -= product.price
        
        
    }
}


