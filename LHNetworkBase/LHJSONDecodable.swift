//
//  LHNJSONDecodable.swift
//
//  Created by Chen Li-Hsuan on 2017/02/04.
//  Copyright © 2017 Chen Li-Hsuan. All rights reserved.
//

import SwiftyJSON

protocol LHNJSONDecodable {
    init?(json: JSON)
}
