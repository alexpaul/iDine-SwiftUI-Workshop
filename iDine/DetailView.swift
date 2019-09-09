//
//  DetailView.swift
//  iDine
//
//  Created by Alex Paul on 9/8/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  
  var menuItem: MenuItem
  
  @EnvironmentObject var order: Order
  
  var body: some View {
    VStack(spacing: 0) {
      ZStack(alignment: .bottomTrailing) {
        Image(menuItem.mainImage)
        Text("Photo: \(menuItem.photoCredit)")
          .padding(8)
          .foregroundColor(.white)
          .background(Color.black)
          .offset(x: -8, y: -8)
      }
      Text(menuItem.name)
        .font(.largeTitle)
        .padding(.top)
      Text(menuItem.description)
        .padding(.leading)
        .padding(.trailing)
        .padding(.bottom)
      Button(action: {
        self.order.items.append(self.menuItem)
      }) {
        Text("Add to order")
      }
      Spacer()
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(menuItem: MenuItem.example)
  }
}
