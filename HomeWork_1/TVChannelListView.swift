//
//  SecondView.swift
//  HomeWork_1
//
//  Created by admin on 04.12.2019.
//  Copyright © 2019 AndreyChar. All rights reserved.
//

import SwiftUI

struct TVChannelListView: View {
    
    @EnvironmentObject var viewModel: TVChannelsModel
    @Binding var selectedChannelId: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer(minLength: 0)
                List {
                    ForEach(viewModel.items) { channel in
                        NavigationLink(destination: TVChannelView(channel: channel), tag: channel.id, selection: self.$selectedChannelId) {
                            Text(channel.name)
                        }
                    }
                }
            }
            .navigationBarTitle("TV Channels")
        }

    }
}

