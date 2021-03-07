//
//  NotesView.swift
//  TezzNotes
//
//  Created by tezz on 07/03/21.
//

import SwiftUI



struct NotesView: View {
    @State var notes = [
        Note(title: "Pokemon", content: "")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(notes, id:\.self) { note in
                        Text(note.title)
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
            .navigationTitle(
                "My Notes"
            )
            .navigationBarItems(
                trailing:
                    Button(action: {
                        notes.append(Note(title: "pokemon", content: ""))
                    }) {
                        Image(systemName: "note.text.badge.plus")
                    }
            )
            .foregroundColor(Color("PrimaryFontColor"))
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotesView()
        }
    }
}
