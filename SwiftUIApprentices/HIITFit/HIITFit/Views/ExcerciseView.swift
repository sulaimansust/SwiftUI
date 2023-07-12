//
//  ExcerciseView.swift
//  HIITFit
//
//  Created by Sulayman Md on 24.05.23.
//

import SwiftUI

struct ExcerciseView: View {
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let index: Int
    
    var body: some View {
        Text(exerciseNames[index])
    }
}

struct ExcerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExcerciseView(index: 0)
    }
}
