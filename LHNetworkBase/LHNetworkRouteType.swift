//
//  LHNetworkRouteType.swift
//
//  Created by Chen Li-Hsuan on 2017/02/04.
//  Copyright © 2017 Chen Li-Hsuan. All rights reserved.
//

import Alamofire
import SwiftyJSON

public protocol LHNetworkRouteType {
    var config: LHNetworkConfigurationType { get }
    var endpoint: String { get }
    var rootEndpoint: String { get }
    var mainEndpoint: String { get }
    
    var baseUrl: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any] { get }
    var headers: [String: String] { get }
}

extension LHNetworkRouteType {
    var endpoint: String { return rootEndpoint + mainEndpoint }
    var rootEndpoint: String { return "" }
    var url: String { return baseUrl + endpoint }
    var baseUrl: String { return self.config.baseUrl }
    var method: HTTPMethod { return .get }
    var encoding: ParameterEncoding { return URLEncoding.default }
    
    var parameters: [String : Any] { return [:] }
    var headers: [String : String] { return [:] }
    
    var networkRequest: DataRequest {
        return request(self.url, method: self.method, parameters: parameters, encoding: encoding, headers: headers)
    }
}
