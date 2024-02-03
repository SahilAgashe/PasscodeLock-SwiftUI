//
//  ContentView.swift
//  CustomPasscodeLock
//
//  Created by SAHIL AMRUT AGASHE on 03/02/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @State private var isAuthenticated = true
    
    // MARK: - body
    var body: some View {
        VStack {
            if isAuthenticated {
                Text("You're in!")
                
                Button("Log Out") {
                    isAuthenticated = false
                }
            } else {
                PasscodeView(isAuthenticated: $isAuthenticated)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
