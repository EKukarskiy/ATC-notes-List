//
//  NotesView.swift
//  ATC-notes
//
//  Created by Evgeniy K on 19.07.2023.
//

import SwiftUI

struct NotesView: View {
    
    @StateObject var viewModel = NoteGridViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            //MARK: list structure
            List {
                //MARK: passing notes data here
                ForEach(AtcData.notes) { note in
                    NavigationLink(destination: NoteScreen(note: note, isShowingDetailView: $viewModel.isShowDetailView)) {
                        NoteTitleView(note: note)
                    }
                }
            }
            .navigationTitle("🚀 ATC-notes")
        }
        //MARK: Back button with text color
        .accentColor(Color(.label))
    }
}

struct NotesGridView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
