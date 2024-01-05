//
//  ContentView.swift
//  Text Editor
//
//  Created by Andy Dobbs on 1/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Test this out"
    @State var capMode = 1
    
    var body: some View {
        VStack {
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            } else if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            } else if capMode == 3 {
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            
            TextField("Enter text here", text: $userText)
                .padding(.vertical)
            
            HStack {
                Button("ALL CAPS") {
                    capMode = 1
                }
                Button("First Letter") {
                    capMode = 2
                }
                Button("lowercase") {
                    capMode = 3
                }
            }
            
            Button("Copy Text") {
                copyToClipboard(text: userText)
            }
            .padding(.vertical)
        }
        .padding()
    }
    
    func copyToClipboard(text: String) {
        UIPasteboard.general.string = text
    }
}

#Preview {
    ContentView()
}
