//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var num: Double = 50
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                        
                Spacer()
                        
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
            }
                    
            Spacer()
            VStack() {
                Text("Move the slider to: ").font(.system(size: 30.0))
                Text(String(num)).font(.system(size: 30.0))
                Slider(value: $num, in: 0...100)
            }
            Spacer()
            Spacer()
        }
        .padding (.top, 20)
    }
}
