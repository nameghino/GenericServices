//
//  AnyStuff.swift
//  NetworkingStuff
//
//  Created by Nico Ameghino on 7/18/17.
//  Copyright © 2017 Nico Ameghino. All rights reserved.
//

import Foundation

public class AnyResponseWrapper<O: Resource & Codable>: ResponseWrapper {
    public var contents: [O] = []
    public required init() { }
}

public class AnyService<O: Resource & Codable>: Service {
    public var baseURL: URL
    public typealias ObjectId = O.ObjectId
    public typealias Value = O
    public required init(url: URL) {
        baseURL = url
    }

    convenience init(url: String) {
        self.init(url: URL(string: url)!)
    }
}

public class AnyManager<O, S: Service>: Manager where O == S.Value {
    public var memo: [O.ObjectId : O] = [:]
    public var service: S

    public typealias Wrapper = AnyResponseWrapper<O>

    static func createManager(for type: O.Type, with baseURL: String) -> AnyManager<O, AnyService<O>> {
        let s = AnyService<O>(url: baseURL)
        return AnyManager<O, AnyService<O>>(service: s)
    }

    init(service: S) {
        self.service = service
    }
}
