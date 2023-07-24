//
// UpdateInboxOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for updating inbox properties */
@objc public class UpdateInboxOptions: NSObject, Codable, JSONEncodable {

    /** Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search */
    public var name: String?
    /** Description of an inbox for labelling and searching purposes */
    public var _description: String?
    /** Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
    public var tags: [String]?
    /** Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. */
    public var expiresAt: Date?
    /** Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering */
    public var favourite: Bool?
    public var favouriteNum: NSNumber? {
        get {
            return favourite as NSNumber?
        }
    }

    public init(name: String? = nil, _description: String? = nil, tags: [String]? = nil, expiresAt: Date? = nil, favourite: Bool? = nil) {
        self.name = name
        self._description = _description
        self.tags = tags
        self.expiresAt = expiresAt
        self.favourite = favourite
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _description = "description"
        case tags
        case expiresAt
        case favourite
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(favourite, forKey: .favourite)
    }
}
