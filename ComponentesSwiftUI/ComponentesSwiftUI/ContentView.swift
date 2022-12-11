//
//  ContentView.swift
//  ComponentesSwiftUI
//
//  Created by Aitor Iglesias Pubill on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    var body: some View {
        VStack {
            Button {
                //TODO: Action
                showSheet.toggle()
            } label: {
                Text("Mostrar el panel")
            }
        }
        .sheet(isPresented: $showSheet) {
            Text("panel")
                .presentationDetents([.medium, .height(200)])
                .presentationDragIndicator(.hidden)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
