//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by Steve on 4/12/26.
//  https://pokeapi.co/api/v2/pokemon
// Stopped at lesson 8 Ch 6.4
// Pushed to github

// Stopped here:
//https://www.youtube.com/watch?v=aWagBxUkL4k&list=PL9VJ9OpT-IPQySL9cldnZ-f3i2LEh4Tzn&index=8
import SwiftUI

struct CreaturesListView: View {
    @State var creatures = Creatures()
 //   var creatures = ["Pikachu","Squirtle","Charzard","Snorlax"]
    var body: some View {
        NavigationStack {
//            Text("Come back and fix this")  //TODO: uncomment below
            List(creatures.creaturesArray, id: \.self) { creature  in
                Text(creature.name)
                    .font(.title2)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")

        }
        .task {
            await creatures.getData()
            
        }
    }
}

#Preview {
    CreaturesListView()
}
