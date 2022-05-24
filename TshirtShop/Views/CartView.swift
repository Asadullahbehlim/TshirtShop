//
//  CartView.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 24/05/22.
//

import SwiftUI

struct CartView: View {
    
    var body: some View {
        ScrollView {
            Text("Your Cart Is Empty")
        }.padding()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
