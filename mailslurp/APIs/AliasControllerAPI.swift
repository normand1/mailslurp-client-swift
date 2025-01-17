//
// AliasControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class AliasControllerAPI : NSObject {

    /**
     Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
     
     - parameter createAliasOptions: (body)  
     - returns: Promise<AliasDto>
     */
    open class func createAlias( createAliasOptions: CreateAliasOptions) -> Promise<AliasDto> {
        let deferred = Promise<AliasDto>.pending()
        createAliasWithRequestBuilder(createAliasOptions: createAliasOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
     - POST /aliases
     - Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createAliasOptions: (body)  
     - returns: RequestBuilder<AliasDto> 
     */
    open class func createAliasWithRequestBuilder(createAliasOptions: CreateAliasOptions) -> RequestBuilder<AliasDto> {
        let localVariablePath = "/aliases"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAliasOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete an email alias
     
     - parameter aliasId: (path)  
     - returns: Promise<Void>
     */
    open class func deleteAlias( aliasId: UUID) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteAliasWithRequestBuilder(aliasId: aliasId).execute { result in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Delete an email alias
     - DELETE /aliases/{aliasId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAliasWithRequestBuilder(aliasId: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get an email alias
     
     - parameter aliasId: (path)  
     - returns: Promise<AliasDto>
     */
    open class func getAlias( aliasId: UUID) -> Promise<AliasDto> {
        let deferred = Promise<AliasDto>.pending()
        getAliasWithRequestBuilder(aliasId: aliasId).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get an email alias
     - GET /aliases/{aliasId}
     - Get an email alias by ID
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - returns: RequestBuilder<AliasDto> 
     */
    open class func getAliasWithRequestBuilder(aliasId: UUID) -> RequestBuilder<AliasDto> {
        var localVariablePath = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliasEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get emails for an alias
     
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index alias email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size alias email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - returns: Promise<PageEmailProjection>
     */
    open class func getAliasEmails( aliasId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAliasEmails? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailProjection> {
        let deferred = Promise<PageEmailProjection>.pending()
        getAliasEmailsWithRequestBuilder(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get emails for an alias
     - GET /aliases/{aliasId}/emails
     - Get paginated emails for an alias by ID
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index alias email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size alias email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - returns: RequestBuilder<PageEmailProjection> 
     */
    open class func getAliasEmailsWithRequestBuilder(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasEmails? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageEmailProjection> {
        var localVariablePath = "/aliases/{aliasId}/emails"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliasThreads: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get threads created for an alias
     
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - returns: Promise<PageThreadProjection>
     */
    open class func getAliasThreads( aliasId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAliasThreads? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageThreadProjection> {
        let deferred = Promise<PageThreadProjection>.pending()
        getAliasThreadsWithRequestBuilder(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get threads created for an alias
     - GET /aliases/{aliasId}/threads
     - Returns threads created for an email alias in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - returns: RequestBuilder<PageThreadProjection> 
     */
    open class func getAliasThreadsWithRequestBuilder(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasThreads? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageThreadProjection> {
        var localVariablePath = "/aliases/{aliasId}/threads"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageThreadProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliases: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all email aliases you have created
     
     - parameter page: (query) Optional page index in alias list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in alias list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: Promise<PageAlias>
     */
    open class func getAliases( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAliases? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageAlias> {
        let deferred = Promise<PageAlias>.pending()
        getAliasesWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get all email aliases you have created
     - GET /aliases
     - Get all email aliases in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in alias list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in alias list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageAlias> 
     */
    open class func getAliasesWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAliases? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageAlias> {
        let localVariablePath = "/aliases"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageAlias>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Reply to an email
     
     - parameter aliasId: (path) ID of the alias that email belongs to 
     - parameter emailId: (path) ID of the email that should be replied to 
     - parameter replyToAliasEmailOptions: (body)  
     - returns: Promise<SentEmailDto>
     */
    open class func replyToAliasEmail( aliasId: UUID,  emailId: UUID,  replyToAliasEmailOptions: ReplyToAliasEmailOptions) -> Promise<SentEmailDto> {
        let deferred = Promise<SentEmailDto>.pending()
        replyToAliasEmailWithRequestBuilder(aliasId: aliasId, emailId: emailId, replyToAliasEmailOptions: replyToAliasEmailOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Reply to an email
     - PUT /aliases/{aliasId}/emails/{emailId}
     - Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path) ID of the alias that email belongs to 
     - parameter emailId: (path) ID of the email that should be replied to 
     - parameter replyToAliasEmailOptions: (body)  
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func replyToAliasEmailWithRequestBuilder(aliasId: UUID, emailId: UUID, replyToAliasEmailOptions: ReplyToAliasEmailOptions) -> RequestBuilder<SentEmailDto> {
        var localVariablePath = "/aliases/{aliasId}/emails/{emailId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replyToAliasEmailOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SentEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Send an email from an alias inbox
     
     - parameter aliasId: (path)  
     - parameter sendEmailOptions: (body)  
     - returns: Promise<SentEmailDto>
     */
    open class func sendAliasEmail( aliasId: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<SentEmailDto> {
        let deferred = Promise<SentEmailDto>.pending()
        sendAliasEmailWithRequestBuilder(aliasId: aliasId, sendEmailOptions: sendEmailOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Send an email from an alias inbox
     - POST /aliases/{aliasId}/emails
     - Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter sendEmailOptions: (body)  
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func sendAliasEmailWithRequestBuilder(aliasId: UUID, sendEmailOptions: SendEmailOptions) -> RequestBuilder<SentEmailDto> {
        var localVariablePath = "/aliases/{aliasId}/emails"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sendEmailOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SentEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update an email alias
     
     - parameter aliasId: (path)  
     - parameter updateAliasOptions: (body)  
     - returns: Promise<AliasDto>
     */
    open class func updateAlias( aliasId: UUID,  updateAliasOptions: UpdateAliasOptions) -> Promise<AliasDto> {
        let deferred = Promise<AliasDto>.pending()
        updateAliasWithRequestBuilder(aliasId: aliasId, updateAliasOptions: updateAliasOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Update an email alias
     - PUT /aliases/{aliasId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter updateAliasOptions: (body)  
     - returns: RequestBuilder<AliasDto> 
     */
    open class func updateAliasWithRequestBuilder(aliasId: UUID, updateAliasOptions: UpdateAliasOptions) -> RequestBuilder<AliasDto> {
        var localVariablePath = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateAliasOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
