//
//  MentorsListViewModel.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import SwiftUI
import Combine

class MentorsListViewModel: ObservableObject {
    @Published var mentorsList: [Mentor] = []
    
    init() {
        getMentorsList()
    }
    
    func getMentorsList() {
        GitHub().getAllMentors{(result) in
            switch result {
            case .success(let returnedMentorsList):
                DispatchQueue.main.async {
                    self.mentorsList = returnedMentorsList
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
