//
//  ContentView.swift
//  One-Button-Message-Toggle
//
//  Created by Vitaliy on 17.03.2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press me!") {
                let awesomeMessage = "You are Awesome!"
                let greatMessage = "You are Great!"
                let sunImage = "sun.max.fill"
                let thumbsImage = "hand.thumbsup"
                
                if message == awesomeMessage {
                    message = greatMessage
                    imageName = thumbsImage
                } else if message == greatMessage {
                    message = awesomeMessage
                    imageName = sunImage
                } else {
                    message = awesomeMessage
                    imageName = sunImage
                }
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
