//
//  NetworkManager.swift
//  YjahzApp
//
//  Created by Mac on 18/12/2023.
//

import Foundation
import Alamofire

protocol NetworkService{
    func loadData<T: Decodable>(url:String,compilitionHandler: @escaping (MyResponse<T>?, Error?) -> Void)
    func postData<T: Decodable>(url:String,parameter:[String:String],compilitionHandler: @escaping (PostClientResponse<T>?, Error?) -> Void)
}
class NetworkManager : NetworkService{
    func postData<T>(url: String, parameter: [String : String], compilitionHandler: @escaping (PostClientResponse<T>?, Error?) -> Void) where T : Decodable, T : Encodable {
        AF.request(url,method:.post,parameters: parameter).responseDecodable(of:  PostClientResponse<T>.self){ response in
            debugPrint(response)
            
            guard response.data != nil else{
              compilitionHandler(nil , response.error)
              return
            }
            do{
              guard let data = response.data else{
                compilitionHandler(nil , response.error)
                return
              }
              let result = try JSONDecoder().decode(PostClientResponse<T>.self, from: data)
                compilitionHandler(result as PostClientResponse<T>,nil)
              
            }catch let error{
              print(error.localizedDescription)
              compilitionHandler(nil,error)
            }
          }
    }
    
    func loadData<T: Decodable>(url:String ,compilitionHandler: @escaping (MyResponse<T>?, Error?) -> Void){
    AF.request(url).responseDecodable(of:  MyResponse<T>.self){ response in
      debugPrint(response)
      
      guard response.data != nil else{
        compilitionHandler(nil , response.error)
        return
      }
      do{
        guard let data = response.data else{
          compilitionHandler(nil , response.error)
          return
        }
        let result = try JSONDecoder().decode(MyResponse<T>.self, from: data)
          compilitionHandler(result as MyResponse<T>,nil)
        
      }catch let error{
        print(error.localizedDescription)
        compilitionHandler(nil,error)
      }
    }
  }
}

