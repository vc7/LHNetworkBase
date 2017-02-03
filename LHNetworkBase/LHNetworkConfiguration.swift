//
//  LHNetworkConfiguration.swift
//
//  Created by Chen Li-Hsuan on 2017/02/04.
//  Copyright © 2017 Chen Li-Hsuan. All rights reserved.
//

import Foundation

struct LHNetworkConfiguration: LHNetworkConfigurationType {
    var baseUrl: String
    
    init(url: String) {
        self.baseUrl = url
    }
}
