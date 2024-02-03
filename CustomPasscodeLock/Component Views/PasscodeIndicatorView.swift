//
//  PasscodeIndicatorView.swift
//  CustomPasscodeLock
//
//  Created by SAHIL AMRUT AGASHE on 03/02/24.
//

import SwiftUI

struct PasscodeIndicatorView: View {
    
    // MARK: - Properties
    @Binding var passcode: String
    
    // MARK: - body
    var body: some View {
        HStack(spacing: 30, content: {
            ForEach( 0 ..< 4) { index in
                Circle()
                    .fill(passcode.count > index ? .primary : Color(.white))
                    .frame(width: 20, height: 20)
                    .overlay {
                        Circle()
                            .stroke(.black, lineWidth: 1)
                    }
            }
        })
    }
}

#Preview {
    VStack {
        PasscodeIndicatorView(passcode: Binding.constant("Hi"))
        PasscodeIndicatorView(passcode: Binding.constant("123"))
    }
}
