//
//  AddView.swift
//  ComprasData
//
//  Created by German David Vertel Narvaez on 26/06/24.
//

import SwiftUI
import SwiftData



struct AddView: View {
    
    @State private var item = ListModel()
    @Environment(\.modelContext) var context  
    @Environment(\.dismiss) var dismiss
    
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
                dismiss()
            } label: {
                Text("Guardar")
            }
            .navigationTitle("Crear compra")

        }
    }
}

