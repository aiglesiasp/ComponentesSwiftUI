//
//  NavigationDataView.swift
//  ComponentesSwiftUI
//
//  Created by Aitor Iglesias Pubill on 11/12/22.
//

import SwiftUI

struct Scores: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let published: Bool
}


struct NavigationDataView: View {
    
    //genero mis datos
    var scores: [Scores] = [
        Scores(title: "Star Wars", published: true),
        Scores(title: "The empire stricks back", published: true),
        Scores(title: "Return of the Jedi", published: false)
    ]
    
    var body: some View {
        NavigationStack {
            //Lista de scores
            List {
                ForEach(scores) { score in
                    NavigationLink (value: score){
                        HStack {
                            Text(score.title)
                            Spacer()
                            Image(systemName: score.published ?
                                  "music.mic.circle.fill" :
                                    "music.mic.circle")
                        }
                    }
                }
            }
            .navigationTitle("Navegacion por datos")
            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: Scores.self) { value in
                //pintamos la vista
                if value.published {
                    Text("Publicado")
                } else {
                    Text("No publicado")
                }
            }
            
            //link2
            VStack {
                Text("Esto es un link")
                NavigationLink(destination: SlidesPanelView()) {
                    Text("link2")
                }

            }
        }
    }
}

struct NavigationDataView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDataView()
    }
}
