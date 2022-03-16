//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    
    var imageName: String
    
    var itemName: String
    
    var quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:50, height:50)
            
                .padding(.trailing)
            
            Text(itemName)
            
            Spacer()
            
            Text(String(quantity))
        }
    }
}

