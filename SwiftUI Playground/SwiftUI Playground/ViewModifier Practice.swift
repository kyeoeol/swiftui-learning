//
//  ViewModifier Practice.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/07.
//

import SwiftUI

extension Text {
    func customFont() -> Text {
        return self
            .font(.title2)
            .bold()
            .italic()
            .foregroundColor(.blue)
    }
}

struct MyTextStyle: ViewModifier {
    
    var myWeight: Font.Weight = .regular
    var myFont: Font = .title2
    var myColor: Color = .black
    
    func body(content: Content) -> some View {
        content
            .font(
                myFont.weight(myWeight)
            )
            .foregroundColor(myColor)
            .padding(.bottom, 20)
    }
}

struct ViewModifier_Practice: View {
    var body: some View {
        VStack {
            Text("Main Title")
                .font(.largeTitle)
                .foregroundColor(.black)
                .bold()
            
            Text("Sub Title")
                .font(.title2)
                .foregroundColor(.orange)
                .italic()
                .padding(.bottom, 20)
            
            Text("Description 1")
                .customFont()
            
            Text("Description 2")
                .modifier(
                    MyTextStyle(myWeight: .bold, myColor: .orange)
                )
        }
    }
}

struct ViewModifier_Practice_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifier_Practice()
    }
}
