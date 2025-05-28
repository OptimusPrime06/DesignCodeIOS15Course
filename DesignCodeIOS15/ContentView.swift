//
//  ContentView.swift
//  DesignCodeIOS15
//
//  Created by Gulliver Raed on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()
            
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .background(.ultraThinMaterial)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(.all, 9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .customStrokeStyle(16)
            
            Text("SwiftUI for IOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            Text("20 Sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                
            Text("Build an IOS ap for IOS 15 with custom layouts, animations and...")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
            
            
        }
        .padding(.all, 20)
        .padding(.vertical, 20)
        .frame(height: 350)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .customStrokeStyle(20)
        .padding(.horizontal, 20)
        .background(
            Image("Blob 1")
                .offset(x: 250, y: -100)
        )
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
        )
        
        
    }
}

#Preview {
    ContentView()
}

#Preview {
    ContentView()
        .colorScheme(.dark)
}
