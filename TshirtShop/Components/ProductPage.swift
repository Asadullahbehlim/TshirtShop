//
//  ProductView.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 23/05/22.
//

import SwiftUI

struct ProductPage : View {
    // MARK: - Property
    @EnvironmentObject var cartController : CartController
    
    
    // MARK: - Body
    var product: Product
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(22)
                    .frame(width: 180)
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                  
                    Text("\(product.price)$")
                        .font(.caption)
                    
                } //Vstack
                   .padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
            } //Zstack
            .frame(width: 180, height: 280, alignment: .leading)
            .shadow(radius: 3)
            
            Button {
                cartController.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
            
        } //Parent Zstack
        
    } // Body
}


struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPage(product: productList[2])
            .environmentObject(CartController())
    }
}

