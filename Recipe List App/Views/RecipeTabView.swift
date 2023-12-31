//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by KARAN D on 30/06/23.
//

import SwiftUI

struct RecipeTabView: View {
    
    
    @State var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
                .tag(1)
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
                .tag(0)
            
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
