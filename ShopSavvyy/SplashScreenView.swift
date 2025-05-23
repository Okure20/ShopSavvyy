//
//  SplashScreenView.swift
//  ShopSavvyy
//
//  Created by Jane on 27/04/2025.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                    
                    Image("Shop").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 100)
                    
                    Spacer()
                    
                    }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                        
                    }
                               }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            self.isActive = true
                        }
                        
                
                        
                    
                        
                    }
            
                }
            }
            
        }
     
                
            }
            
        }
    
    
    #Preview {
        SplashScreenView()
    }

