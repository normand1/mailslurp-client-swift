//
// InboxByEmailAddressResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Result of search for inbox by email address */
@objc public class InboxByEmailAddressResult: NSObject, Codable, JSONEncodable {

    public var inboxId: UUID?
    public var exists: Bool

    public init(inboxId: UUID? = nil, exists: Bool) {
        self.inboxId = inboxId
        self.exists = exists
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboxId
        case exists
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encode(exists, forKey: .exists)
    }
}
