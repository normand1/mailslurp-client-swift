//
// EmailTextLinesResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Parsed text of an email */
@objc public class EmailTextLinesResult: NSObject, Codable, JSONEncodable {

    public var lines: [String]
    public var body: String

    public init(lines: [String], body: String) {
        self.lines = lines
        self.body = body
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lines
        case body
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(lines, forKey: .lines)
        try container.encode(body, forKey: .body)
    }
}
