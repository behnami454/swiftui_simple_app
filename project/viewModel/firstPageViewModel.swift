//
//  viewmodel.swift
//  project
//
//  Created by Admin on 10/12/22.
//

import Foundation

final class firstPageViewModel: ObservableObject{
    //    @Published var id : Int = 0
    //    @Published var email : String = ""
    //    @Published var name : String = ""
    //    @Published var phone : String = ""
    
    //    init() {
    //        fetchFirstPageApi()
    //    }
    
    @Published var firstPageModelUsers: [firstPageModel] = []
    @Published var hasError = false
    @Published var error : firstPageError?
    @Published private(set) var isRefreshing = false
    
    func fetchFirstPageApi(){
        
        
        isRefreshing = true
        hasError = false
        
        let firstPageUrlString = "https://jsonplaceholder.typicode.com/users"
        if let url = URL(string: firstPageUrlString)
        {
            URLSession.shared.dataTask(with: url) {[weak self] data, response, error in
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    if let error = error {
                        self?.hasError = true
                        self?.error = firstPageError.custom(error: error)
                        
                    }
                    else {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        
                        if let data = data,
                           let firstPageModelUsers = try? decoder.decode([firstPageModel].self, from: data){
                            
                            self?.firstPageModelUsers = firstPageModelUsers
                        }
                        else{
                            self?.hasError = true
                            self?.error = firstPageError.failedToDecode
                        }
                    }
                    self?.isRefreshing = false
                }
                
                
            }.resume()
        }
    }
}

extension firstPageViewModel {
    enum firstPageError : LocalizedError {
        case custom(error : Error)
        case failedToDecode
        
        var errorDescription: String? {
            switch self {
            case .failedToDecode:
                return "failed to get the results"
            case .custom(let error):
                return error.localizedDescription
            }
        }
    }
}
