//
//  ContentView.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/13.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // TextFieldSampleに入力された値の変化を監視
    @State var text: String = ""
    
    var body: some View {
        // 引数に代入したContentViewの変数textが
        // TextFieldSampleの変数textに結びつく
        TextFieldSample(placeholder: "数字を入力", text: $text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
