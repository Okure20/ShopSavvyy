//
//  ContentView.swift
//  ShopSavvyy
//
//  Created by Jane on 26/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Onboarding()
           
            
            
        }
        
    }


#Preview {
    ContentView()
}
// Home Screen
struct Home: View {
    var body: some View {
        ZStack {
           Color.black
                    .ignoresSafeArea()
            VStack {
                Text("Welcome to Home Screen!")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("SignIn Page")
                    .foregroundColor(.white)
                    .font(.body)
                    .fontWeight(.medium)
                
            }
        }
    }
    
}

// Onboarding Screens

struct Onboarding: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .kerning(1.2)
                    })
                        
                } .padding()
                    .foregroundColor(.white)
                
                Spacer(minLength: 0)
                
                Image("Onboard 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 16)
                    .frame(height:300)
                
                Spacer(minLength: 80)
                
                Text("Discover Our Products")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .padding(.top)
                    .padding(.bottom, 5)
                    .foregroundColor(.white)
                
                Text("Browse thousands of products, from fashion to tech. Find what you love, effortlessly.")
                    .font(.body)
                    .foregroundColor(.white)
                    .padding([.leading, .trailing])
                    .fontWeight(.regular)
                    .kerning(1.2)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Text("Next")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.black)
                        .background(Color("maincolor"))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                    
                })
                       
                
                    
                    
                }
            }
        }
        
        
    }

