//
//  BadgeBackground.swift
//  DrawingandAnimation
//
//  Created by kyeoeol on 2022/07/04.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        Path { path in
            var width: CGFloat = 100.0
            let height = width
            path.move(to: CGPoint(
                x: width * 0.95,
                y: height * 0.20
            ))
        }
        .fill(.black)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
