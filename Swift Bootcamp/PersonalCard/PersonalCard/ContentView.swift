//
//  ContentView.swift
//  PersonalCard
//
//  Created by David Pittman on 4/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
        Color(red: 0.51, green: 0.93, blue: 0.93, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Trophy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 6)
                    )

                Text("John Smith")
                    .font(Font.custom("Nunito", size:40))
                .bold()
                Text("Software Engineer")
                    .font(.system(size:25))
                Divider()
                InfoView(text: "999-999-9999", imageName: "phone.fill")
                InfoView(text: "Email@EmailProvider.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}


