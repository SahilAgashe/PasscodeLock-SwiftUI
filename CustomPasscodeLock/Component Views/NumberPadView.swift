//
//  NumberPadView.swift
//  CustomPasscodeLock
//
//  Created by SAHIL AMRUT AGASHE on 03/02/24.
//

import SwiftUI

struct NumberPadView: View {
    
    // MARK: - Properties
    @Binding var passcode: String
    
    let columns: [GridItem] = [
        .init(),
        .init(),
        .init()
    ]
    
    // MARK: - body
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach( 1 ... 9, id: \.self) { (index: Int) in
                Button(action: { addValue(index) }, label: {
                    Text("\(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .contentShape(.rect)
                })
            }
            
            Button(action: { removeValue() }, label: {
                Image(systemName: "delete.backward")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .contentShape(.rect)
            })
            
            Button(action: { addValue(0) }, label: {
                Text("0")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .contentShape(.rect)
            })
        }
        .foregroundStyle(.primary)
    }
    
    // MARK: - Helpers
    private func addValue(_ value: Int) {
        if passcode.count < 4 {
            passcode += "\(value)"
        }
    }
    
    private func removeValue() {
        if !passcode.isEmpty {
            passcode.removeLast()
        }
    }
}

#Preview {
    NumberPadView(passcode: .constant("hello"))
}
