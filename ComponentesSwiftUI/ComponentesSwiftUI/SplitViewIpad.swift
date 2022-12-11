//
//  SplitViewIpad.swift
//  ComponentesSwiftUI
//
//  Created by Aitor Iglesias Pubill on 11/12/22.
//

import SwiftUI

struct SplitViewIpad: View {
    @State private var heros = ["Goku", "Krillin", "Vegeta"]
    @State private var selectedHero: String?
    
    
    var body: some View {
        
        NavigationSplitView {
            //Izquierda (lista)
            List(heros, id: \.self, selection: $selectedHero) { cad in
                Text("\(cad)")
                
            }
            .navigationSplitViewColumnWidth(200000000)
        } detail: {
            //Detalle (derecha)
            Text(selectedHero ?? "Selecciona un heroe")
        }
    }
}

struct SplitViewIpad_Previews: PreviewProvider {
    static var previews: some View {
        SplitViewIpad()
    }
}
