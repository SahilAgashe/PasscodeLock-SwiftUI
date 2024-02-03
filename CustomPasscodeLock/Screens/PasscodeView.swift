//
//  PasscodeView.swift
//  CustomPasscodeLock
//
//  Created by SAHIL AMRUT AGASHE on 03/02/24.
//

import SwiftUI

struct PasscodeView: View {
    
    // MARK: - Properties
    @State private var passcode = ""
    @Binding var isAuthenticated: Bool
    
    // MARK: - body
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 24) {
                Text("Enter Password")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Please enter your 4-digit pin to securely access your account.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.top)
            
            // indicator view
            PasscodeIndicatorView(passcode: $passcode)
            
            Spacer()
            
            // numberpad
            NumberPadView(passcode: $passcode)
        }
        .onChange(of: passcode) {
            verifyPasscode()
        }
    }
    
    // MARK: - Helpers
    private func verifyPasscode() {
        guard passcode.count == 4 else { return }
        
        Task {
            try? await Task.sleep(nanoseconds: 125_000_000)
            isAuthenticated = passcode == "1111"
            passcode = ""
        }
    }
}

#Preview {
    PasscodeView(isAuthenticated: .constant(false))
}
