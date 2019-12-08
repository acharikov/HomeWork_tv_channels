//
//  ItemView.swift
//  HomeWork_1
//
//  Created by admin on 04.12.2019.
//  Copyright © 2019 AndreyChar. All rights reserved.
//

import SwiftUI

struct TVChannelView: View {

    var channel: TVChannel
    
    var body: some View {
        Text(self.channel.name)
    }
}
