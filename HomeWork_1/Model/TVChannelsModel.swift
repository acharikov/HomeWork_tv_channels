//
//  ListItem.swift
//  HomeWork_1
//
//  Created by admin on 04.12.2019.
//  Copyright © 2019 AndreyChar. All rights reserved.
//

import Foundation


struct TVChannel: Identifiable, Equatable {
    let name: String
    let id: Int
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}

final class TVChannelsModel: ObservableObject {
    
    @Published private(set) var items = [TVChannel(name: "BBC", id: 1),
                                         TVChannel(name: "Discovery Channel", id: 2),
                                         TVChannel(name: "MTV", id: 3),
                                         TVChannel(name: "HBO", id: 4),
                                         TVChannel(name: "Disney Channel", id: 6),
                                         TVChannel(name: "FOX", id: 7),
                                         TVChannel(name: "Nickelodeon", id: 8)]
    
    func channel(at index: Int) -> TVChannel? {
        guard index < items.count, index >= 0 else {
            return nil
        }
        return items[index]
    }
}

