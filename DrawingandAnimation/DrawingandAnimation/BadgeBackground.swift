//
//  BadgeBackground.swift
//  DrawingandAnimation
//
//  Created by kyeoeol on 2022/07/04.
//

import SwiftUI

struct BadgeBackground: View {
    // MARK: - Properties
    
    static let gradientStart = Color(
        red: 239.0 / 255,
        green: 120.0 / 255,
        blue: 221.0 / 255
    )
    static let gradientEnd = Color(
        red: 239.0 / 255,
        green: 172.0 / 255,
        blue: 120.0 / 255
    )
    
    // MARK: - Body
    
    var body: some View {
        /// Wrap the path in a GeometryReader so the badge can use the size of its containing view,
        /// which defines the size instead of hard-coding the value (100).
        GeometryReader { geometry in
            /// Path로 line, curve 및 기타 drawing primitives 들을 결합해
            /// 육각형 배경과 같은 복잡한 모양을 형성한다.
            Path { path in
                // starting point
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                /// Move(to:) 메서드는 drawing cursor를  도형의 경계 내에서 이동하도록 한다.
                /// (가상 펜이나 연필이 그 영역 위로 맴돌고 그림을 그리기 시작하기를 기다리는 것처럼)
                path.move(
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                HexagonParameters.segments.forEach { segment in
                    /// addLine(to:) 메서드는 단일 지점을 가져와 그린다.
                    /// addLine(to:)에 대한 연속적인 호출은 이전 지점에서 줄을 시작하해 새로운 지점으로 계속한다.
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                                   ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            } //: Path
            .fill(
                .linearGradient(
                    Gradient(colors: [
                        Self.gradientStart,
                        Self.gradientEnd
                    ]),
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 0.6)
                )
            )
        } //: GeometryReader
        /// 1:1 화면 비율을 유지함으로써, 시야 중앙에 위치를 유지하도록 한다.
        .aspectRatio(1, contentMode: .fit)
    }
}

// MARK: - Previews

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
