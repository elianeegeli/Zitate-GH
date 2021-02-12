//
//  ContentView.swift
//  Zitate
//
//  Created by Eliane Egeli on 06.02.21.
//

import SwiftUI

struct ZitateListView: View {
    @ObservedObject var model = ZitatModel ()
    
    var body: some View {
        
        NavigationView {
            List (model.zitate) { z in
            
                NavigationLink(
                destination: ZitatDetailView (zitat: z),
                label: {
                    
                    
                    HStack (spacing: 20  ){
                        Image (z.bild)
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(5)
                            .frame(width: 70, height:  70, alignment: .center)
                            .clipped()
                        
                        Text (z.titel)
                            .font(.body)
                        
                    }
                    .padding(.horizontal)
                })
        }
        .navigationBarTitle("Alle Zitate" ).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
            

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZitateListView()
    }
}
