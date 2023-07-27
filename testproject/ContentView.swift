//
//  ContentView.swift
//  testproject
//
//  Created by scholar on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var TextTitle = "What is your name?"
    @State private var name = ""
    var body: some View {
        VStack {
            Text(TextTitle)
                .font(.title)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                TextTitle = "Welcome,\(name)!"
                print(name)
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
