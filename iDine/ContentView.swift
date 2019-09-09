//
//  ContentView.swift
//  iDine
//
//  Created by Paul Hudson on 01/09/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  let menu = Bundle.main.decode([MenuItem].self, from: "menu.json")
  
  var body: some View {
    NavigationView {
      List(menu) { item in
        Image(item.thumbnailImage)
        VStack(alignment: .leading) {
          Text(item.name)
            .font(.headline)
          Text("$\(item.price)")
        }
      }
      .navigationBarTitle("iDine")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
