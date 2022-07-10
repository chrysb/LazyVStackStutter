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
  
  /// In order to prevent jitter when scrolling to the top of the scroll view, this value should be larger than the max number of items that will fit on one screen.
  let firstItems = 15
  
  var body: some View {
    VStack {
      Button("Shuffle items") {
        items = MockData.randomMessages(count: 100)
      }
      ScrollView {
        VStack {
          ForEach(items.prefix(firstItems)) { item in
            Text(item.text)
              .background(colors.randomElement()!)
          }
          LazyVStack(spacing: 10) {
            ForEach(items.dropFirst(firstItems)) { item in
              Text(item.text)
                .background(colors.randomElement()!)
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
