//
// CreateInboxDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for creating an inbox. An inbox has a real email address that can send and receive emails. Inboxes can be permanent or expire at a given time. Inboxes are either `SMTP` or `HTTP` mailboxes. `SMTP` inboxes are processed by a mail server running at `mailslurp.mx` while `HTTP` inboxes are processed by AWS SES backed mailservers. An inbox email address is randomly assigned by default ending in either `mailslurp.com` or (if `useDomainPool` is enabled) ending in a similar domain such as `mailslurp.xyz` (selected at random). To specify an address use a custom domain: either pass the `emailAddress` options with `&lt;your-recipient&gt;@&lt;your-domain&gt;`. To create a randomized address for your domain set the `domainName` to the domain you have verified or pass the `domainId`. Virtual inboxes prevent outbound sending and instead trap mail. */
@objc public class CreateInboxDto: NSObject, Codable, JSONEncodable {

    public enum InboxType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpInbox = "SMTP_INBOX"
    }
    /** A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. */
    public var emailAddress: String?
    /** FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox. */
    public var domainName: String?
    /** ID of custom domain to use for email address. */
    public var domainId: UUID?
    /** Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. */
    public var name: String?
    /** Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with */
    public var _description: String?
    /** Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types. */
    public var useDomainPool: Bool?
    public var useDomainPoolNum: NSNumber? {
        get {
            return useDomainPool as NSNumber?
        }
    }
    /** Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
    public var tags: [String]?
    /** Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX. */
    public var expiresAt: Date?
    /** Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering */
    public var favourite: Bool?
    public var favouriteNum: NSNumber? {
        get {
            return favourite as NSNumber?
        }
    }
    /** Number of milliseconds that inbox should exist for */
    public var expiresIn: Int64?
    public var expiresInNum: NSNumber? {
        get {
            return expiresIn as NSNumber?
        }
    }
    /** DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. */
    public var allowTeamAccess: Bool?
    public var allowTeamAccessNum: NSNumber? {
        get {
            return allowTeamAccess as NSNumber?
        }
    }
    /** Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). */
    public var inboxType: InboxType?
    /** Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. */
    public var virtualInbox: Bool?
    public var virtualInboxNum: NSNumber? {
        get {
            return virtualInbox as NSNumber?
        }
    }
    /** Use a shorter email address under 31 characters */
    public var useShortAddress: Bool?
    public var useShortAddressNum: NSNumber? {
        get {
            return useShortAddress as NSNumber?
        }
    }

    public init(emailAddress: String? = nil, domainName: String? = nil, domainId: UUID? = nil, name: String? = nil, _description: String? = nil, useDomainPool: Bool? = nil, tags: [String]? = nil, expiresAt: Date? = nil, favourite: Bool? = nil, expiresIn: Int64? = nil, allowTeamAccess: Bool? = nil, inboxType: InboxType? = nil, virtualInbox: Bool? = nil, useShortAddress: Bool? = nil) {
        self.emailAddress = emailAddress
        self.domainName = domainName
        self.domainId = domainId
        self.name = name
        self._description = _description
        self.useDomainPool = useDomainPool
        self.tags = tags
        self.expiresAt = expiresAt
        self.favourite = favourite
        self.expiresIn = expiresIn
        self.allowTeamAccess = allowTeamAccess
        self.inboxType = inboxType
        self.virtualInbox = virtualInbox
        self.useShortAddress = useShortAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress
        case domainName
        case domainId
        case name
        case _description = "description"
        case useDomainPool
        case tags
        case expiresAt
        case favourite
        case expiresIn
        case allowTeamAccess
        case inboxType
        case virtualInbox
        case useShortAddress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(domainName, forKey: .domainName)
        try container.encodeIfPresent(domainId, forKey: .domainId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(useDomainPool, forKey: .useDomainPool)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(favourite, forKey: .favourite)
        try container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        try container.encodeIfPresent(allowTeamAccess, forKey: .allowTeamAccess)
        try container.encodeIfPresent(inboxType, forKey: .inboxType)
        try container.encodeIfPresent(virtualInbox, forKey: .virtualInbox)
        try container.encodeIfPresent(useShortAddress, forKey: .useShortAddress)
    }
}
