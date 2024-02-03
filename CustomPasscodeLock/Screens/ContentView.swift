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
        if isAuthenticated {
            VStack(spacing: 50) {
                VStack {
                    Text("You're in!")
                    Button("Log Out") { isAuthenticated = false }
                }
                
                Text("This application is for learning purpose\n Your password is 1111")
                    .multilineTextAlignment(.center)
            }
        } else {
            PasscodeView(isAuthenticated: $isAuthenticated)
        }
    }
}

#Preview {
    ContentView()
}
