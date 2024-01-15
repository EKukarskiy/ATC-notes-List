//
//  NoteTitleView.swift
//  ATC-notes
//
//  Created by Evgeniy K on 27.07.2023.
//

import SwiftUI

struct NoteTitleView: View {
    
    let note: Note
    
    var body: some View {
        HStack {
            Image(systemName: note.imageName)
                .resizable()
                .frame(width: 55, height: 55)
            Text(note.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

struct NoteTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NoteTitleView(note: AtcData.testNote)
    }
}
