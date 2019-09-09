//
//  Favorites.swift
//  iDine
//
//  Created by Paul Hudson on 01/09/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published private(set) var items = [String]()

    func contains(_ item: MenuItem) -> Bool {
        return items.contains(item.name)
    }

    func toggle(_ item: MenuItem) {
        if let position = items.firstIndex(of: item.name) {
            items.remove(at: position)
        } else {
            items.append(item.name)
        }
    }
}
