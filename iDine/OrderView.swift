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
  
  @State private var showingAlert = false
  
  var body: some View {
    NavigationView {
      Form {
        List {
          Section {
            ForEach(order.items) { item in
              Text(item.name)
            }
            .onDelete(perform: delete)
          }
          Section {
            Button(action: {
              self.showingAlert = true
            }) {
              Text("Place order")
            }.alert(isPresented: $showingAlert) {
              Alert(title: Text("Thank you"),
                    message: Text("Your order has been placed."),
                    dismissButton: .default(Text("OK")))
            }
          }.disabled(order.items.isEmpty)
        }
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
