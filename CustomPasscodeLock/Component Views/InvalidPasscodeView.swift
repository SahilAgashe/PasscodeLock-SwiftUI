//
//  InvalidPasscodeView.swift
//  CustomPasscodeLock
//
//  Created by SAHIL AMRUT AGASHE on 03/02/24.
//

import SwiftUI

struct InvalidPasscodeView: View {
    var body: some View {
        Text("Invalid password! Please enter valid password.")
            .foregroundStyle(.red)
    }
}

#Preview {
    InvalidPasscodeView()
}
