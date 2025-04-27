//
//  ContentView.swift
//  ShopSavvyy
//
//  Created by Jane on 26/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Content view")
                .foregroundColor(.white)
                .font(.system(size: 30))
        }
        
    }
}

#Preview {
    ContentView()
}
