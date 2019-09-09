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
    VStack {
      Image(menuItem.mainImage)
      Text(menuItem.name)
      Text(menuItem.description)
      Spacer()
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(menuItem: MenuItem.example)
  }
}
