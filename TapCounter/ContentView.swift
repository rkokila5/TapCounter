//
//  ContentView.swift
//  TapCounter
//
//  Created by Kokila on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count  = 0
    
    var body : some View {
        VStack(spacing: 24) {
            Text("Tap Counter")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Count: \(count)")
                .font(.title)
            
            Button(action: {
                count += 1
            }) {
                Text("Tap Me!")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
    
            }
            .padding(.horizontal)
            Button("Reset") {
                count = 0
            }
            .foregroundStyle(.red)
        }
        .padding()
        
    }
}


#Preview {
    ContentView()
}
