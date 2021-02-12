//
//  ZitatDetailViews.swift
//  Zitate
//
//  Created by Eliane Egeli on 06.02.21.
//

import SwiftUI

struct ZitatDetailView: View {
    var zitat: Zitat;
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Image (zitat.bild)
                    .resizable()
                    .padding()
                    .scaledToFill()
                    .clipped()
                VStack (alignment: .center) {
                    Text ("Gedicht")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                    
                    ForEach (0..<4) { index in
                        Text (zitat.gedicht[index])
                        
                    }
//                    ForEach (zitat.gedicht, id: \.self) { item in
//                        Text (item)
                            
 //                           .padding(.bottom, 2)
  //                  }
                    Text ("Information")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    ForEach (zitat.information, id: \.self)
                    { item in
                           Text (item)
                           .padding(.bottom, 2)
                    }
                }
            }
        }
        .navigationBarTitle(zitat.titel)
    }
}

struct ZitatDetailViews_Previews: PreviewProvider {
    static var previews: some View {
        let model = ZitatModel()
        
        ZitatDetailView(zitat: model.zitate[0])
    }
}
