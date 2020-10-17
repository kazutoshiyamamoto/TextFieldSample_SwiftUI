//
//  SharedTextView.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/17.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct SharedTextView: View {
    var body: some View {
        Text("TextFieldには「\(viewModel.text)」が入力されています")
    }
}

struct SharedTextView_Previews: PreviewProvider {
    static var previews: some View {
        SharedTextView()
    }
}
