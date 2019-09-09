//
//  AppView.swift
//  iDine
//
//  Created by Alex Paul on 9/8/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      ContentView()
        .tabItem {
          Image(systemName: "1.circle")
          Text("Menu")
      }
      OrderView()
        .tabItem {
          Image(systemName: "2.circle")
          Text("Orders")
      }
    }
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
