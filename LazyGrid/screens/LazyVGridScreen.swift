//
//  LazyVGridScreen.swift
//  LazyGrid
//
//  Created by Зехниддин on 03/01/21.
//

import SwiftUI

struct LazyVGridScreen: View {
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange, .yellow, .orange, .yellow, .orange]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 11) {
                    ForEach(0...100, id: \.self) { index in
                        ZStack {
                            Image("photo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                            VStack {
                                Spacer()
                                
                                ZStack {
                                    Rectangle()
                                        .fill(AngularGradient(gradient: Gradient(colors: [.black, .white, .black, .white]), center: .bottomTrailing, angle: .degrees(0)))
                                        .frame(height: 50)
                                        .opacity(0.5)
                                    
                                    Text("Title: \(index)")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                }
                            }
                        }
                        .cornerRadius(15)
                        .shadow(color: .white, radius: 2)
                        .padding(.horizontal, 2)
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

struct LazyVGridScreen_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridScreen()
    }
}

