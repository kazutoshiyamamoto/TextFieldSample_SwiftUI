//
//  ContentView.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/13.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // @StateをつけることでloginIdの値の変化を監視
    @State var loginId: String = ""
    
    var body: some View {
        VStack {
            // 変数loginIdの値をTextFieldに入力された文字に更新
            TextField("文字を入力", text: $loginId)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            // 変数loginIdの値が空であればメッセージを表示
            if loginId.isEmpty {
                Text("文字を入力してください")
                    .frame(width: 250, height: 50)
                    .foregroundColor(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
