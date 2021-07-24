//
//  ContentView.swift
//  Shared
//
//  Created by Chrys Bader on 7/20/21.
//

import SwiftUI

let colors = [Color.blue, Color.red, Color.green, Color.orange, Color.pink, Color.yellow]

struct ContentView: View {
  @State var items: [Message] = MockData.randomMessages(count: 100)
  
  var body: some View {
    VStack {
      Button("Shuffle items") {
        items = MockData.randomMessages(count: 100)
      }
      ScrollView {
        LazyVStack(spacing: 10) {
          ForEach(items) { item in
            Text(item.text)
              .background(colors.randomElement()!)
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
