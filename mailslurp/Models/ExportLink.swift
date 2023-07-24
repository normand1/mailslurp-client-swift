//
// ExportLink.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Export download link */
@objc public class ExportLink: NSObject, Codable, JSONEncodable {

    public var downloadLink: String

    public init(downloadLink: String) {
        self.downloadLink = downloadLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case downloadLink
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(downloadLink, forKey: .downloadLink)
    }
}

