//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by Shohei Sugawa on 2020/09/28.
//

import SwiftUI

struct ContentView: View {
    let buttons: [[CalculatorButton]] = [
            [.ac, .plusMinus, .percnet, .divide],
            [.seven, .eight, .nine, .multiply],
            [.four, .five, .six, .minus],
            [.one, .two, .three, .plus],
            [.zero, .decimal, .equal]
        ]

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 12) {
                HStack {
                    Spacer()
                    Text("123").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()

                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Button(action: {

                            }, label: {
                                Text(button.title)
                                    .font(.system(size: 32))
                                    .frame(width: button.width, height: button.height)
                                    .foregroundColor(.white)
                                    .background(button.backgroundColor)
                                    .cornerRadius(button.width)
                            })
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
