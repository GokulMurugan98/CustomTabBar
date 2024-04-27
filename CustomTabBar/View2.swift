//
//  View2.swift
//  CustomTabBar
//
//  Created by Gokul Murugan on 23/01/24.
//

import SwiftUI

struct View2: View {
    @Binding var text:String
    var body: some View {
        VStack{
            TextField("Enter yoour text here", text: $text)
                .background(.red)
        }.frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height)
        
    }
}

#Preview {
    View2(text: .constant(""))
}
