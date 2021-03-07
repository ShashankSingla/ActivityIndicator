//
//  View+Extension.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

extension View {
    func activityIndicator(style: StyleCode, show: Bool, color: Color = .blue) -> some View {
        return self.modifier(SSActivityIndicator(show: true, style: style, color: color))
    }
}
