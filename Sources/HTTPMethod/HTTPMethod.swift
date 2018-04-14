//
//  HTTPMethod.swift
//  SwiftyAPIRequest
//
//  Created by moaible on 2018/04/14.
//

import Foundation

public enum HTTPMethod: ExpressibleByStringLiteral, CustomStringConvertible {
    
    case get
    case post
    case put
    case head
    case delete
    case patch
    case trace
    case options
    case connect
    case `extension`(String)
    
    public init(stringLiteral value: String) {
        switch value {
        case "GET":
            self = .get
        case "POST":
            self = .post
        case "PUT":
            self = .put
        case "HEAD":
            self = .head
        case "DELETE":
            self = .delete
        case "PATCH":
            self = .patch
        case "TRACE":
            self = .trace
        case "OPTIONS":
            self = .options
        case "CONNECT":
            self = .connect
        default:
            self = .extension(value)
        }
    }
    
    public var description: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        case .head:
            return "HEAD"
        case .delete:
            return "DELETE"
        case .patch:
            return "PATCH"
        case .trace:
            return "TRACE"
        case .options:
            return "OPTIONS"
        case .connect:
            return "CONNECT"
        case .extension(let value):
            return value
        }
    }
}

extension HTTPMethod: Hashable {
    
    public var hashValue: Int {
        return description.hashValue
    }
    
    public static func == (lhs: HTTPMethod, rhs: HTTPMethod) -> Bool {
        return lhs.description == rhs.description
    }
}
