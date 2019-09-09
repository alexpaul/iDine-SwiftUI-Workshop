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
  
  var body: some View {
    VStack(spacing: 0) {
      ZStack {
        Image(menuItem.mainImage)
        Text("Photo: \(menuItem.photoCredit)")
          .padding(8)
          .foregroundColor(.white)
          .background(Color.black)
      }
      Text(menuItem.name)
        .font(.largeTitle)
        .padding(.top)
      Text(menuItem.description)
        .padding(.leading)
        .padding(.trailing)
      Spacer()
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(menuItem: MenuItem.example)
  }
}
