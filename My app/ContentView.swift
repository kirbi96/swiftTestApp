//
//  ContentView.swift
//  My app
//
//  Created by user on 12.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.18, green: 0.20, blue: 0.21).ignoresSafeArea()
            VStack{
                Image("makarov").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 3))
                
                
                Text("Kirill Makarov")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Mobile Developer")
                    .fontWeight(.light)
                Divider()
                
                ContactCard(icon: "moon.stars.fill", title: "github.com/kirbi96")
                
                ContactCard(icon: "location.fill", title: "telegram Kirbish")
                
                
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContactCard: View {
    let icon: String
    let title: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .padding(.horizontal).frame( height: 56).overlay(HStack {
                Image(systemName: icon)
                Text(title)
                
            }.foregroundColor(Color(red: 0.18, green: 0.20, blue: 0.21)))
    }
}
