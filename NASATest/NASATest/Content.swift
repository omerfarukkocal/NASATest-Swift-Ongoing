//
//  Content.swift
//  NASATest
//
//  Created by Ömer Faruk on 14.02.2021.
//

import Foundation

struct Content: Decodable, Identifiable {
    let id: Int
    let camera_name: String
    let img_src: String
    let earth_date: String
    let rover_name: String
    let status: String
    let landing_date: String
    let launch_date: String
}

let MOCK_CONTENT: [Content] = [
    .init(id: 0, camera_name: "Curiosity", img_src: "1", earth_date: "2015-05-31", rover_name: "FHAZ", status: "active", landing_date: "2011-04-21", launch_date: "2010-05-20"),

    .init(id: 1, camera_name: "Opportunity", img_src: "1", earth_date: "2014-12-03", rover_name: "RHAZ", status: "active", landing_date: "2009-09-15", launch_date: "2009-01-02")]
