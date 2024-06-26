//
//  ContentView.swift
//  ComprasData
//
//  Created by German David Vertel Narvaez on 26/06/24.
//agregamos el import a swifit data, ya que aqui haremos lo que es la querydata

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query private var items: [ListModel]
    @State private var show = false
    
    var body: some View {
        NavigationStack{
            List{
                Section("Activas"){
                    ForEach(items) { item in
                        Text(item.titulo)
                    }
                }
                Section("Completadas"){
                    
                }
            }
            .navigationTitle("Mis Compras")
            .toolbar{
                ToolbarItem{
                    Button{
                        show.toggle()
                    }label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $show, content: {
                NavigationStack{
                    AddView()
                }.presentationDetents([.medium])
            })
        }
    }
}

#Preview {
    ContentView()
}
