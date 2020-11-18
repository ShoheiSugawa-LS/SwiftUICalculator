//
//  CalculatorButton.swift
//  SwiftUICalculator
//
//  Created by Shohei Sugawa on 2020/09/28.
//

import SwiftUI

enum CalculatorButton {
    case zero, one, two, three, four, five, six, seven, eight, nine, decimal
    case equal, plus, minus, multiply, divide
    case ac, plusMinus, percnet

    var title: String {
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .decimal: return "."
        case .equal: return "="
        case .plus: return "+"
        case .minus: return "-"
        case .multiply: return "×"
        case .divide: return "÷"
        case .ac: return "AC"
        case .plusMinus: return "±"
        case .percnet: return "%"
        }
    }

    var backgroundColor: Color {
        switch self {
        case .ac, .plusMinus, .percnet:
            return Color(.lightGray)
        case .equal, .plus, .minus, .multiply, .divide:
            return .orange
        default:
            return Color(.darkGray)
        }
    }

    var width: CGFloat {
        switch self {
        case .zero:
            return (UIScreen.main.bounds.width - 5 * 12) / 4 * 2 + 12
        default:
            return (UIScreen.main.bounds.width - 5 * 12) / 4
        }
    }

    var height: CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}
