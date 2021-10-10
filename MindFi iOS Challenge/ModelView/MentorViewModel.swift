//
//  MentorViewModel.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import SwiftUI
import Combine

class MentorViewModel: ObservableObject {
    @Published var mentor: Mentor?
    
    init(username: String) {
        self.getMentorDetail(username: username)
    }
    
    func getMentorDetail(username: String) {
        GitHub().getMentorDetail(username: username,completion: {(result) -> Void in
            switch result {
            case .success(let returnedMentor):
                DispatchQueue.main.async {
                    self.mentor = returnedMentor
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
}
