//
//  Indicator2.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

struct Indicator2: View {
    @State var startAnimating: Bool = false
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<5, id: \.self) { index in
                Capsule()
                    .frame(width: 10, height: self.startAnimating ? 40: 15)
                    .animation(Animation.easeInOut.repeatForever(autoreverses: true).delay(Double(index) / 20).speed(0.5))
            }
        }
        .frame(width: 65)
        .onAppear() {
            self.startAnimating = true
        }
    }
}



struct Indicator2_Previews: PreviewProvider {
    static var previews: some View {
        Indicator2()
    }
}
