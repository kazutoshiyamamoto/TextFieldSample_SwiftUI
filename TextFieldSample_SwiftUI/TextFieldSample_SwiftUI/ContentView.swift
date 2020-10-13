//
//  ContentView.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/13.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // @Stateをつけることでtextの値の変化を監視
    @State var text: String = ""
    
    var body: some View {
        VStack {
            // 変数textの値をTextFieldに入力された文字に更新
            TextField("数字を入力", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            // 変数textの値が数字でなければメッセージを表示
            if !isNumericString(text: text) {
                Text("数字を入力してください")
                    .frame(width: 250, height: 50)
                    .foregroundColor(Color.red)
            }
        }
    }
    
    // 引数の文字列が数字の文字列かどうか判定
    func isNumericString(text: String) -> Bool {
        if Int(text) == nil {
            return false
        } else {
            return true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
