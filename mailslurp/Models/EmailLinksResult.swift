//
// EmailLinksResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Links found in HTML */
@objc public class EmailLinksResult: NSObject, Codable, JSONEncodable {

    public var links: [String]
    public var body: String

    public init(links: [String], body: String) {
        self.links = links
        self.body = body
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links
        case body
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(links, forKey: .links)
        try container.encode(body, forKey: .body)
    }
}
