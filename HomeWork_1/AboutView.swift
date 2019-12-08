//
//  ThirdView.swift
//  HomeWork_1
//
//  Created by admin on 04.12.2019.
//  Copyright © 2019 AndreyChar. All rights reserved.
//

import SwiftUI
import Combine

struct AboutView: View {
    
    @State private var show: Bool = false
    
    var body: some View {
        Button(action: {
            self.show = true
        }) {
            Text("Show info")
        }.betterSheet(isPresented: self.$show, onDismiss: {} ) {
            AboutModal()
        }
    }
}

struct AboutModal: View {
 
    var body: some View {
        Text("TV Channels App")
            .font(.largeTitle)
    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}


