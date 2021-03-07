//
//  Indicator1.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

struct Indicator1: View {
    @State var startAnimating: Bool = false
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<5, id: \.self) { index in
                Capsule()
                    .frame(width: 8, height: self.startAnimating ? 30: 10)
                    .animation(Animation.easeInOut.repeatForever(autoreverses: true).delay(Double(index) / 15 + 0.8).speed(0.8))
            }
           
        }
        .frame(width: 65)
        .onAppear() {
            withAnimation {
                self.startAnimating = true
            }
        }
    }
}
struct Indicator1_Previews: PreviewProvider {
    static var previews: some View {
        Indicator1()
    }
}
