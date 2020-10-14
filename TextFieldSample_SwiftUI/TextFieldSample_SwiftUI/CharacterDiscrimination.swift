//
//  CharacterDiscrimination.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/14.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

class CharacterDiscrimination {
    // 引数の文字列が数字の文字列かどうか判定
    func hasNumericString(text: String) -> Bool {
        if Int(text) == nil {
            return false
        } else {
            return true
        }
    }
}
