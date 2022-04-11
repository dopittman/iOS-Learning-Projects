//
//  InfoView.swift
//  PersonalCard
//
//  Created by David Pittman on 4/11/22.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12.5)
            .fill(Color.white)
            .frame(width: 350, height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                    Text(text)
                })
            .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
