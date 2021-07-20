//
//  MockData.swift
//  LazyVStackStutter (iOS)
//
//  Created by Chrys Bader on 7/20/21.
//

import Foundation

struct MockData {
  static let cannedText = [
    "Quisque maximus non est non condimentum.",
    "Praesent sit amet condimentum lacus, vel vehicula tellus. Cras non dolor vel nulla accumsan mollis.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus risus libero, laoreet eget cursus vitae, malesuada quis magna. Sed tristique pharetra ultrices. Suspendisse vitae est quis leo auctor commodo eget vitae tortor. Sed convallis rutrum luctus. Fusce in nibh suscipit, venenatis est fringilla, sollicitudin mi.",
    "Aliquam euismod, tortor ut venenatis mattis, est neque rutrum massa, vitae laoreet nibh ex eu arcu. Curabitur ut augue in sem aliquam ultrices. Integer mollis mattis eros eget vulputate.",
    "Nam cursus semper lacinia. Nullam pretium massa auctor, vehicula augue ac, bibendum lorem.",
    "Hi"
  ]
  
  static func makeMessage() -> String? {
    return cannedText.randomElement()
  }
  
  static func randomMessages(count: Int) -> [String] {
    var messages = [String]()
    
    for _ in 0..<count {
      if let message = cannedText.randomElement() {
        messages.append(message)
      }
    }
    return messages
  }
}
