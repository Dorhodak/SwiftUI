//
//  ContentView.swift
//  Elvis
//
//  Created by Vitaliy on 13.03.2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var imageName = "questionmark"
    @State private var message = "Choose"
    
    var body: some View {
        
        VStack {
            
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
                
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    imageName = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    imageName = "lightbulb"
                    message = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .padding(.bottom, 24)
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}

