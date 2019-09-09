//
//  DetailView.swift
//  iDine
//
//  Created by Alex Paul on 9/8/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
  @EnvironmentObject var order: Order
  @EnvironmentObject var favorites: Favorites
  
  var menuItem: MenuItem
  
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
    .navigationBarItems(trailing: Button(action: {
      self.favorites.toggle(self.menuItem)
    }) {
      Image(systemName: self.favorites.contains(self.menuItem) ? "heart.fill" : "heart")
        .font(.system(size: 29))
        .foregroundColor(.red)
    })
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      DetailView(menuItem: MenuItem.example).environmentObject(Order())
    }
  }
}
