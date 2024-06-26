//
//  AddView.swift
//  ComprasData
//
//  Created by German David Vertel Narvaez on 26/06/24.
//

import SwiftUI

struct AddView: View {
    
    @State private var item = ListModel()
    @Environment(\.modelContext) var context
    
    var body: some View {
        List{
            TextField("Titulo", text: $item.titulo)
            TextField("Presupuesto", text: $item.presupuesto)
                .keyboardType(.numberPad)
            DatePicker("Fecha", selection: $item.fecha)
            Button{
                withAnimation{
                    context.insert(item)
                }
            } label: {
                Text("guardar")
            }.navigationTitle("Crear compra")

        }
    }
}

