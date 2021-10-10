//
//  GetUsers.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import Combine

extension GitHub {
    func getAllMentors(completion: @escaping (Result<[Mentor], Error>) -> Void) {
        guard let url = URL(string: GitHub.baseUrl + APIPath.users.rawValue) else {
            print("Invalid URL!");
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.success([]))
                return
            }
            
            do {
                let mentorsList = try JSONDecoder().decode([Mentor].self, from: data)
                completion(.success(mentorsList))
            } catch let jsonError {
                print(String(describing: jsonError))
                completion(.failure(jsonError))
                return
            }
        }.resume()
    }
}
