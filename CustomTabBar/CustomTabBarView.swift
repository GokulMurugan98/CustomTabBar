//
//  CustomTabBarView.swift
//  CustomTabBar
//
//  Created by Gokul Murugan on 23/01/24.
//

import SwiftUI

enum TabSelection{
    case Home, Activity, Explore, Premium
}

struct CustomTabBarView: View {
    @Binding var selected:TabSelection
    var body: some View {
        HStack{
            Spacer()
            Button(action: {
                selected = .Home
            },
                   label: {
                returnTabIcon(name: "Home", iconName: "house", selection: (selected == .Home))
            })
            Spacer()
            Button(action: {
                selected = .Activity
            },
                   label: {
                returnTabIcon(name: "Activity", iconName: "list.bullet.rectangle", selection: (selected == .Activity))
                
            })
            Spacer()
            Button(action: {
                selected = .Explore
            },
                   label: {
                returnTabIcon(name: "Explore", iconName: "magnifyingglass", selection: (selected == .Explore))
                
                
            })
            Spacer()
            Button(action: {
                selected = .Premium
            },
                   label: {
                returnTabIcon(name: "Premium", iconName: "creditcard", selection: (selected == .Premium))
                
            })
            Spacer()
        }
        .padding(.bottom,5)
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 14)
        .background(.gray.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

extension CustomTabBarView{
    
    func returnTabIcon(name:String, iconName:String, selection:Bool) -> some View{
        VStack(alignment: .center){
            GeometryReader(content: { geometry in
                VStack{
                    if !selection {
                        VStack{
                            Image(systemName: iconName)
                                .resizable()
                                .foregroundStyle(.black.opacity(0.5))
                                .frame(width: UIScreen.main.bounds.size.width/16, height: UIScreen.main.bounds.size.width/18)
                        }
                    } else {
                        Text(name)
                            .font(.system(size: 14).weight(.semibold))
                            .foregroundStyle(.black)
                            
                        Circle()
                            .frame(width: UIScreen.main.bounds.size.width * 0.02)
                            .foregroundStyle(.red.opacity(0.7))
                    }
                }.frame(width:geometry.size.width, height: geometry.size.height)
                
            })
            
        }
    }
}

#Preview {
    CustomTabBarView(selected: .constant(.Home))
}
