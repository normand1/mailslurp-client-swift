//
// WebhookBouncePayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** BOUNCE webhook payload. Sent to your webhook url endpoint via HTTP POST when an email bounced or was rejected by a recipient. Save the recipients to a ban list on your server and avoid emailing them again. It is recommended you also listen to the BOUNCE_RECIPIENT payload. */
@objc public class WebhookBouncePayload: NSObject, Codable, JSONEncodable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
        case deliveryStatus = "DELIVERY_STATUS"
        case bounce = "BOUNCE"
        case bounceRecipient = "BOUNCE_RECIPIENT"
        case newSms = "NEW_SMS"
    }
    /** Idempotent message ID. Store this ID locally or in a database to prevent message duplication. */
    public var messageId: String
    /** ID of webhook entity being triggered */
    public var webhookId: UUID
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName
    /** Name of the webhook being triggered */
    public var webhookName: String?
    /** ID of the bounce email record. Use the ID with the bounce controller to view more information */
    public var bounceId: UUID
    /** Email sent to recipients */
    public var sentToRecipients: [String]?
    /** Sender causing bounce */
    public var sender: String
    /** Email addresses that resulted in a bounce or email being rejected. Please save these recipients and avoid emailing them in the future to maintain your reputation. */
    public var bounceRecipients: [String]?

    public init(messageId: String, webhookId: UUID, eventName: EventName, webhookName: String? = nil, bounceId: UUID, sentToRecipients: [String]? = nil, sender: String, bounceRecipients: [String]? = nil) {
        self.messageId = messageId
        self.webhookId = webhookId
        self.eventName = eventName
        self.webhookName = webhookName
        self.bounceId = bounceId
        self.sentToRecipients = sentToRecipients
        self.sender = sender
        self.bounceRecipients = bounceRecipients
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case webhookId
        case eventName
        case webhookName
        case bounceId
        case sentToRecipients
        case sender
        case bounceRecipients
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encode(eventName, forKey: .eventName)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(bounceId, forKey: .bounceId)
        try container.encodeIfPresent(sentToRecipients, forKey: .sentToRecipients)
        try container.encode(sender, forKey: .sender)
        try container.encodeIfPresent(bounceRecipients, forKey: .bounceRecipients)
    }
}
