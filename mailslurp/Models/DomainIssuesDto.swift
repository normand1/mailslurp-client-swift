//
// DomainIssuesDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class DomainIssuesDto: NSObject, Codable, JSONEncodable {

    public var hasIssues: Bool

    public init(hasIssues: Bool) {
        self.hasIssues = hasIssues
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hasIssues
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hasIssues, forKey: .hasIssues)
    }
}
