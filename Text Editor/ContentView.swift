//
//  ContentView.swift
//  Text Editor
//
//  Created by Andy Dobbs on 1/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Test this out"
    
    var body: some View {
        VStack {
            Text(userText)
                .font(.largeTitle)
            TextField("Enter text here", text: $userText)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
