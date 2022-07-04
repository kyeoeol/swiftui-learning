//
//  ButtonView.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/04.
//

import SwiftUI

struct ButtonView: View {
    @Binding var state: Bool
    
    var body: some View {
        Button {
            state.toggle()
        } label: {
            Text(state ? "toggle~~" : "no Toggle")
        }

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(state: .constant(false))
    }
}
