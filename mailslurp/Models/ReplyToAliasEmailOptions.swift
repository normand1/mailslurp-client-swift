//
// ReplyToAliasEmailOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for replying to an alias email using the alias inbox */
@objc public class ReplyToAliasEmailOptions: NSObject, Codable, JSONEncodable {

    public enum SendStrategy: String, Codable, CaseIterable {
        case singleMessage = "SINGLE_MESSAGE"
    }
    /** Body of the reply email you want to send */
    public var body: String
    /** Is the reply HTML */
    public var isHTML: Bool
    /** The charset that your message should be sent with. Optional. Default is UTF-8 */
    public var charset: String?
    /** List of uploaded attachments to send with the reply. Optional. */
    public var attachments: [String]?
    /** Template variables if using a template */
    public var templateVariables: [String: AnyCodable]?
    /** Template ID to use instead of body. Will use template variable map to fill defined variable slots. */
    public var template: UUID?
    /** How an email should be sent based on its recipients */
    public var sendStrategy: SendStrategy?
    /** Optionally use inbox name as display name for sender email address */
    public var useInboxName: Bool?
    public var useInboxNameNum: NSNumber? {
        get {
            return useInboxName as NSNumber?
        }
    }
    public var html: Bool?
    public var htmlNum: NSNumber? {
        get {
            return html as NSNumber?
        }
    }

    public init(body: String, isHTML: Bool, charset: String? = nil, attachments: [String]? = nil, templateVariables: [String: AnyCodable]? = nil, template: UUID? = nil, sendStrategy: SendStrategy? = nil, useInboxName: Bool? = nil, html: Bool? = nil) {
        self.body = body
        self.isHTML = isHTML
        self.charset = charset
        self.attachments = attachments
        self.templateVariables = templateVariables
        self.template = template
        self.sendStrategy = sendStrategy
        self.useInboxName = useInboxName
        self.html = html
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case isHTML
        case charset
        case attachments
        case templateVariables
        case template
        case sendStrategy
        case useInboxName
        case html
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(isHTML, forKey: .isHTML)
        try container.encodeIfPresent(charset, forKey: .charset)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(templateVariables, forKey: .templateVariables)
        try container.encodeIfPresent(template, forKey: .template)
        try container.encodeIfPresent(sendStrategy, forKey: .sendStrategy)
        try container.encodeIfPresent(useInboxName, forKey: .useInboxName)
        try container.encodeIfPresent(html, forKey: .html)
    }
}

