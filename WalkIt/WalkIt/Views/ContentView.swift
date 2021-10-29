//
//  ContentView.swift
//  WalkIt
//
//  Created by Syed Bilal Amir, Ethan Reinke, Arzen Edillo on 2021-10-03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var screenSelection: Int? = nil
    
    var body: some View {
        NavigationView{
            VStack(spacing: 1){
                NavigationLink(destination: MapScreen(), tag: 1, selection: $screenSelection) {}
                NavigationLink(destination: SettingsScreen(), tag: 2, selection: $screenSelection) {}

                Text("Home Page")
                    .padding()
                
                Button(action: {
                        self.screenSelection = 1;
                }){
                    Text("Nav to map Screen")
                        .foregroundColor(Color.white)
                        .font(.title2)
                        .padding(10)
                }
                .background(Color.blue)
                .cornerRadius(15)
                
                Button(action: {
                        self.screenSelection = 2;
                }){
                    Text("Nav to settings Screen")
                        .foregroundColor(Color.white)
                        .font(.title2)
                        .padding(10)
                }
                .background(Color.blue)
                .cornerRadius(15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
