//
//  SSActivityIndicator.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

enum StyleCode {
    case style1, style2, style3, style4
}

struct SSActivityIndicator: ViewModifier {
    @State var startAnimating: Bool = false
    var show: Bool = false
    var style: StyleCode = .style1
    var color: Color = .blue
    func body(content: Content) -> some View {
        ZStack {
            content
            if show {
                if style == .style1 {
                    Indicator1()
                        .foregroundColor(color)
                } else if style == .style2 {
                    Indicator2()
                        .foregroundColor(color)
                } else if style == .style3 {
                    Indicator3(color: color)
                } else {
                    Indicator4(color: color)
                }
            
            }
        }
    }
}



