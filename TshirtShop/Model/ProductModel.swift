//
//  ProductModel.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 23/05/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var price: Int
}

var productList = [Product(image: "Tshirt1", name: "White T-Shirt", price: 49),
                   Product(image: "Tshirt2", name: "Premium Short Sleeve T-Shirt", price: 49),
                   Product(image: "Tshirt3", name: "Designer T-Shirt", price: 49),
                   Product(image: "Tshirt4", name: "Black T-Shirt", price: 49),
                   Product(image: "Tshirt5", name: "Premium Designer T-Shirt", price: 59),
                   Product(image: "Tshirt6", name: "Hustle Quote T-Shirt", price: 49),
                   Product(image: "Tshirt7", name: "Cat Design T-Shirt", price: 59),
                   Product(image: "Tshirt8", name: "Original Lucky T-Shirt", price: 49)
]
