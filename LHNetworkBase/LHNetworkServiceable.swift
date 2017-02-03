//
//  LHNetworkServiceable.swift
//
//  Created by Chen Li-Hsuan on 2017/02/04.
//  Copyright © 2017 Chen Li-Hsuan. All rights reserved.
//

import Alamofire

public protocol LHNetworkServiceable {
    var route: LHNetworkRouteType { get }
    var networkClient: LHNetworkClientType { get set }
}
