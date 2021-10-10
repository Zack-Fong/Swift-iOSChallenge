//
//  MentorsListScreen.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 9/10/21.
//

import Foundation
import SwiftUI

struct MentorsListScreen: View {
    @ObservedObject var mentorsListViewModel = MentorsListViewModel()
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            List(mentorsListViewModel.mentorsList) { mentor in
                NavigationLink(destination: MentorScreen(username: mentor.username), isActive: $isActive) {
                    MentorRow(mentor: mentor)
                }
            }.navigationBarTitle(!isActive ?  Text("\(mentorsListViewModel.mentorsList.count) Mentors"):Text("Mentors")).foregroundColor(Color.black)
        }
    }
}

struct MentorsListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MentorsListScreen()
    }
}
