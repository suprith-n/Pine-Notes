//
//  ContentView.swift
//  Pine Notes
//
//  Created by Heavy on 09/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.green.opacity(0.9), Color.black.opacity(0.6), Color.green.opacity(0.8)]),
                        startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(height: geometry.size.height/2)
                .overlay(RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.black.opacity(0.6))
                    .background(
                                RoundedRectangle(cornerRadius: 25)
                                            .fill(Color.black.opacity(0.6))
                                            .blur(radius: 90, opaque: false) // Apply blur effect
                                    )
                    .frame(width: .infinity, height: 200)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading,
                                   spacing: 15) {
                            Text("Welome to Pine Notes Heavy")
                                .font(.system(size: 24, weight: .bold))
                            Text("Your Personal space for Ideating and noting thoughts")
                                .font(.system(.subheadline))
                            }
                            Image(systemName: "applepencil.and.scribble")
                                .imageScale(.large)
                                .font(.system(size: 40))
                        }.padding()
                    )
                    .padding()
                    .foregroundColor(.white)
                )
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ContentView()
}
