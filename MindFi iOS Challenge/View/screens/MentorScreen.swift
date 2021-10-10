//
//  MentorScreen.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 9/10/21.
//

import Foundation
import SwiftUI

struct MentorScreen: View {
    var username: String
    var mentorViewModel: MentorViewModel?
     
    init(username: String) {
        self.username = username
        mentorViewModel = MentorViewModel(username: username)
    }
    
    var body: some View {
        VStack {
            if let mentor = mentorViewModel?.mentor {
                HStack  {
                    ImageViewer(url: URL(string: mentor.image)! , width: 100, height:  100)
                    VStack(alignment: .leading){
                        Text(mentor.name ?? "").foregroundColor(.gray)
                        Text(mentor.company ?? "").foregroundColor(.gray)
                        Text(mentor.email ?? "").foregroundColor(.gray)
                        Text(mentor.githubURL).foregroundColor(.gray)
                    }
                }
                
                HStack() {
                    Spacer()
                    VStack {
                        Text("\(mentor.followers ?? 0)").foregroundColor(.gray)
                        Text("Followers").foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("\(mentor.following ?? 0)").foregroundColor(.gray)
                        Text("Following").foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("\(mentor.publicGists ?? 0)").foregroundColor(.gray)
                        Text("Gists").foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("\(mentor.publicRepos ?? 0)").foregroundColor(.gray)
                        Text("Repos").foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                Spacer()
            }
           
        }
    }
}

struct MentorScreen_Previews: PreviewProvider {
    static var previews: some View {
        MentorScreen(username: "macournoyer")
    }
}
