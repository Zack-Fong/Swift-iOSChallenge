//
//  MentorRow.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import SwiftUI

struct MentorRow: View {
    var mentor: Mentor

    var body: some View {
        /*return NavigationLink(destination: MentorScreen(username: mentor.username)) {
            HStack {
                ImageViewer(url: URL(string: mentor.image)!, width: nil, height:  nil)
                VStack(alignment: .leading){
                    Text(mentor.username).foregroundColor(.gray)
                    Text(mentor.type).foregroundColor(.gray)
                }
            }
        }*/
        return HStack {
            ImageViewer(url: URL(string: mentor.image)!, width: nil, height:  nil)
            VStack(alignment: .leading){
                Text(mentor.username).foregroundColor(.gray)
                Text(mentor.type).foregroundColor(.gray)
            }
        }
    }
}

