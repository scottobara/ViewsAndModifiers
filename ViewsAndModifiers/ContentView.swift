//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Scott Obara on 7/1/21.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .border(Color.red, width: 2)
            .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color.blue, lineWidth: 3)
                )
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct ContentView: View {

    var body: some View {
        Text(".titleStyle()")
            .titleStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
 Day 24 of #100DaysOfSwiftUI: Project 3, part two

 Curious to find that outline() does not get applied to clipShape(). Found the following recommending the use of overlay() for applying outlines to shapes

 https://www.hackingwithswift.com/quick-start/swiftui/how-to-draw-a-border-around-a-view

 */
