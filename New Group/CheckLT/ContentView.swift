//
//  ContentView.swift
//  CheckLT
//
//  Created by Zi on 10/09/2025.
//

import SwiftUI

struct ContentView: View {
    init(){
        for fontFamily in UIFont.familyNames
        {
            for font in UIFont.fontNames(forFamilyName: fontFamily)
            {
                print("-- \(font)")
            }
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
