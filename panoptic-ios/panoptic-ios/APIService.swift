//
//  APIService.swift
//  panoptic-ios
//
//  Created by Clinton Buie on 4/3/18.
//  Copyright © 2018 AmateMint. All rights reserved.
//

import Foundation
import YelpAPI
import PromiseKit

class APIService {
    
    var yelpClient:YLPClient
    
    static let sharedInstance = APIService()
    
    private init() {
        yelpClient = YLPClient(apiKey: Strings.Yelp.YelpAPIKey)
    }
    
    func yelpSearch() -> Promise<YLPSearch> {
        return Promise { seal in
            self.yelpClient.search(withLocation: "Culver City, CA", term: "Traditional Chinese Medicine", limit: 20, offset: 0, sort: YLPSortType.highestRated) { (result, error) in
                
                if let uError = error {
                    print(uError)
                    seal.reject(uError)
                    return
                }
                
                guard let uResult = result else {
                    return
                }
                seal.fulfill(uResult)
            }
        }
    }
}
