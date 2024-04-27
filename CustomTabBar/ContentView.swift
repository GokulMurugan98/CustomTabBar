//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Gokul Murugan on 23/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var selected:TabSelection = .Home
    @State var textView1 = ""
    @State var textView2 = ""
    
    var body: some View {
        ZStack {
            switch selected {
            case .Home:
                EmptyView()
            case .Activity:
                View2(text: $textView1)
            case .Explore:
                EmptyView()
            case .Premium:
                View2(text: $textView2)
            }
            VStack{
                Spacer()
                CustomTabBarView(selected: $selected)
            }
            
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
