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
var totalPages = 3
// Onboarding Screens



struct Onboarding: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            if currentPage == 1 {
                ScreenView(Image: "Onboard 1", title: "Discover Our Products", details: "")
            }
            
            if currentPage == 2 {
                ScreenView(Image: "Onboard 2", title: "Hassle-Free Checkouts", details: "")
            }
            
            if currentPage == 3 {
                ScreenView(Image: "Onboard 3", title: "Easy and Happy Shopping", details: "")
            }
            
            }
        }
        
        
    }


struct ScreenView: View {
    
    @AppStorage("currentpage") var currentPage = 1
    
    
    var Image: String
    var title: String
    var details: String
    
    
    var body: some View {
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
            
            SwiftUICore.Image(Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 16)
                .frame(height:300)
            
            Spacer(minLength: 80)
            
            Text(title)
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
            
            Button(action: {
                if currentPage <= totalPages {
                    currentPage += 1
                }
                
                else {
                    currentPage = 1
                }
            }, label: {
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
