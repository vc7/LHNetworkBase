//
//  LHNetworkClient.swift
//
//  Created by Chen Li-Hsuan on 2017/02/04.
//  Copyright © 2017 Chen Li-Hsuan. All rights reserved.
//

import Alamofire
import SwiftyJSON

public struct LHNetworkClient: LHNetworkClientType {
    
    static let `default`: LHNetworkClient = {
        let client = LHNetworkClient()
        return client
    }()
    
    public func request<Request: DataRequest>(networkRequest: Request, completionHandler: @escaping (Result<JSON>) -> Void) {
        networkRequest
            .validate()
            .responseData { response in
            switch response.result {
            case .success(let data):
                let json = JSON(data: data)
                completionHandler(Result.success(json))
            case .failure(let error):
                completionHandler(Result.failure(error))
            }
        }
    }
}
