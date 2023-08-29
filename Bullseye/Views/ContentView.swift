//
//  ContentView.swift
//  Bullseye
//
//  Created by Becky Schmitthenner on 7/8/23.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
      VStack {
        Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
          .bold()
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
          .kerning(2)
        Text(String(game.target))
          .bold()
          .kerning(-1)
          .font(.largeTitle)
          .fontWeight(.black)
        HStack {
          Text("1")
            .bold()
          Slider(value: $sliderValue, in: 1.0...100.0)
          Text("100")
            .bold()
        }
      Button("Hit Me") {
        alertIsVisible = true
      }
      .alert(
        "Hello there!",
        isPresented: $alertIsVisible,
        actions: {
          Button("Awesome") {
            print("Alert closed")
          }
          },
        message: {
          let roundedValue = Int(sliderValue.rounded())
          Text("""
        You selected \(roundedValue). You scored \(game.points(sliderValue: roundedValue))
""")
        }
          )
        }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
