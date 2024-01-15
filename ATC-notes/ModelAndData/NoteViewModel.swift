//
//  NoteViewModel.swift
//  ATC-notes
//
//  Created by Evgeniy K on 21.07.2023.
//

import SwiftUI

//MARK: ObservableObject broadcasts the source of truth
final class NoteGridViewModel: ObservableObject {
    
    var selectedNote: Note? {
        //MARK: when selectedNote changes, make isShowDetailView - true
        didSet {
            isShowDetailView = true }
    }
    
    @Published var isShowDetailView = false
}
