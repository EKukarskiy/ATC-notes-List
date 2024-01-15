//
//  NoteScreen.swift
//  ATC-notes
//
//  Created by Evgeniy K on 19.07.2023.
//

import SwiftUI

struct NoteScreen: View {
    
    var note: Note
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            
            NoteTitleView(note: note)
            Text(note.description)
                .font(.body)
                .padding()
            
            Spacer()
        }
    }
}

struct Previews_NoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        NoteScreen(note: AtcData.testNote, isShowingDetailView: .constant(false))
    }
}
