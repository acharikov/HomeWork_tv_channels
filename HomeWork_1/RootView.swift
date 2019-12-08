//
//  RootView.swift
//  HomeWork_1
//
//  Created by admin on 04.12.2019.
//  Copyright © 2019 AndreyChar. All rights reserved.
//

import SwiftUI


struct RootView: View {

    enum AppTabItems: Int {
        case Home = 0
        case Channels
        case About
    }
    
    @EnvironmentObject var model: TVChannelsModel
    @State private var tabSelection = 0
    @State private var selectedChannelId: Int?
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
        
            Button(action: {
                self.selectedChannelId = self.model.items[2].id
                self.tabSelection = AppTabItems.Channels.rawValue
            }) {
                Text("Open MTV Channel")
            }
            .tabItem {
                VStack {
                    Text("Home")
                    Image(systemName: "house")
                }
            }
            .tag(AppTabItems.Home.rawValue)
            
            TVChannelListView(selectedChannelId: $selectedChannelId)
                .tabItem {
                    VStack {
                        Text("TV Channels")
                        Image(systemName: "tv")
                    }
                }
                .tag(AppTabItems.Channels.rawValue)
            
            AboutView()
                .tabItem {
                    VStack {
                        Text("About")
                        Image(systemName: "info.circle")
                    }
                }
                .tag(AppTabItems.About.rawValue)
        }.padding(.top, 16).navigationBarHidden(true)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
