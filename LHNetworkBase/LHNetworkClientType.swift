//
//  LHNetworkClientType.swift
//
//  Created by Chen Li-Hsuan on 2017/02/04.
//  Copyright © 2017 Chen Li-Hsuan. All rights reserved.
//

import Alamofire
import SwiftyJSON

public protocol LHNetworkClientType {
    func request<Request: DataRequest>(networkRequest: Request, completionHandler: @escaping (Result<JSON>) -> Void)
}
