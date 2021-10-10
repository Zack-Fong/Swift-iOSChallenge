//
//  GetUserDetail.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import Combine

extension GitHub {
    func getMentorDetail(username: String, completion: @escaping (Result<Mentor?, Error>) -> Void) {
        guard let url = URL(string: GitHub.baseUrl + APIPath.users.rawValue + "/" + username) else {
            print("Invalid URL!");
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.success(nil))
                return
            }
            
            do {
                let mentor = try JSONDecoder().decode(Mentor.self, from: data)
                completion(.success(mentor))
            } catch let jsonError {
                completion(.failure(jsonError))
                return
            }
        }.resume()
    }
}
