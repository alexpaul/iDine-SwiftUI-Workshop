//
//  OrderView.swift
//  iDine
//
//  Created by Alex Paul on 9/8/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct OrderView: View {
  
  @EnvironmentObject var order: Order
  
  var body: some View {
    NavigationView {
      List {
        ForEach(order.items) { item in
          Text(item.name)
        }
        .onDelete(perform: delete)
      }
      .navigationBarTitle("Orders")
      .navigationBarItems(trailing: EditButton())
    }
  }
  
  func delete(offsets: IndexSet) {
    order.items.remove(atOffsets: offsets)
  }
}

struct OrderView_Previews: PreviewProvider {
  static var previews: some View {
    OrderView().environmentObject(Order())
  }
}
