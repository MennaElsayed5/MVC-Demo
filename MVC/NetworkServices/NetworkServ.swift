//
//  NetworkServ.swift
//  MVC
//
//  Created by Menna on 26/04/2022.
//

import Foundation
protocol MovieService{
    static func fetchData (complitionHandler : @escaping (MyResult?)-> Void )
}
class NetworkServ: MovieService {
    static func fetchData(complitionHandler: @escaping (MyResult?) -> Void) {
        let url = URL(string: "")
        guard let Url2 = url else{
            return
        }
        let request = URLRequest(url: Url2)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: request){ (data, response , error) in
        guard let data = data else {
            return
        }
        do {
            let result = try JSONDecoder().decode(MyResult.self, from: data)
            complitionHandler(result)
            
        }
        catch let error {
            print(error.localizedDescription)
        }
    }
        task.resume()
    
    }
}

