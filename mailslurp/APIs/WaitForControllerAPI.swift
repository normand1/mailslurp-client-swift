//
// WaitForControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class WaitForControllerAPI : NSObject {

    /**
     Wait for an email to match the provided filter conditions such as subject contains keyword.
     
     - parameter waitForConditions: (body)  
     - returns: Promise<[EmailPreview]>
     */
    open class func waitFor( waitForConditions: WaitForConditions) -> Promise<[EmailPreview]> {
        let deferred = Promise<[EmailPreview]>.pending()
        waitForWithRequestBuilder(waitForConditions: waitForConditions).execute { result in
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
     Wait for an email to match the provided filter conditions such as subject contains keyword.
     - POST /waitFor
     - Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter waitForConditions: (body)  
     - returns: RequestBuilder<[EmailPreview]> 
     */
    open class func waitForWithRequestBuilder(waitForConditions: WaitForConditions) -> RequestBuilder<[EmailPreview]> {
        let localVariablePath = "/waitFor"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: waitForConditions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[EmailPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForEmailCount: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
     
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater that 1 
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: Promise<[EmailPreview]>
     */
    open class func waitForEmailCount( inboxId: UUID,  count: Int,  timeout: Int64? = nil,  unreadOnly: Bool? = nil,  before: Date? = nil,  since: Date? = nil,  sort: Sort_waitForEmailCount? = nil,  delay: Int64? = nil) -> Promise<[EmailPreview]> {
        let deferred = Promise<[EmailPreview]>.pending()
        waitForEmailCountWithRequestBuilder(inboxId: inboxId, count: count, timeout: timeout, unreadOnly: unreadOnly, before: before, since: since, sort: sort, delay: delay).execute { result in
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
     Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
     - GET /waitForEmailCount
     - If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater that 1 
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<[EmailPreview]> 
     */
    open class func waitForEmailCountWithRequestBuilder(inboxId: UUID, count: Int, timeout: Int64? = nil, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sort: Sort_waitForEmailCount? = nil, delay: Int64? = nil) -> RequestBuilder<[EmailPreview]> {
        let localVariablePath = "/waitForEmailCount"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count.encodeToJSON(), isExplode: true),
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: true),
            "unreadOnly": (wrappedValue: unreadOnly?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "delay": (wrappedValue: delay?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[EmailPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForLatestEmail: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Fetch inbox's latest email or if empty wait for an email to arrive
     
     - parameter inboxId: (query) Id of the inbox we are fetching emails from (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only. (optional, default to false)
     - parameter before: (query) Filter for emails that were before after the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: Promise<Email>
     */
    open class func waitForLatestEmail( inboxId: UUID? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil,  before: Date? = nil,  since: Date? = nil,  sort: Sort_waitForLatestEmail? = nil,  delay: Int64? = nil) -> Promise<Email> {
        let deferred = Promise<Email>.pending()
        waitForLatestEmailWithRequestBuilder(inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly, before: before, since: since, sort: sort, delay: delay).execute { result in
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
     Fetch inbox's latest email or if empty wait for an email to arrive
     - GET /waitForLatestEmail
     - Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are fetching emails from (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only. (optional, default to false)
     - parameter before: (query) Filter for emails that were before after the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<Email> 
     */
    open class func waitForLatestEmailWithRequestBuilder(inboxId: UUID? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sort: Sort_waitForLatestEmail? = nil, delay: Int64? = nil) -> RequestBuilder<Email> {
        let localVariablePath = "/waitForLatestEmail"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: true),
            "unreadOnly": (wrappedValue: unreadOnly?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "delay": (wrappedValue: delay?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Email>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
     
     - parameter waitForSingleSmsOptions: (body)  
     - returns: Promise<SmsDto>
     */
    open class func waitForLatestSms( waitForSingleSmsOptions: WaitForSingleSmsOptions) -> Promise<SmsDto> {
        let deferred = Promise<SmsDto>.pending()
        waitForLatestSmsWithRequestBuilder(waitForSingleSmsOptions: waitForSingleSmsOptions).execute { result in
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
     Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
     - POST /waitForLatestSms
     - Wait until a phone number meets given conditions or return immediately if already met
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter waitForSingleSmsOptions: (body)  
     - returns: RequestBuilder<SmsDto> 
     */
    open class func waitForLatestSmsWithRequestBuilder(waitForSingleSmsOptions: WaitForSingleSmsOptions) -> RequestBuilder<SmsDto> {
        let localVariablePath = "/waitForLatestSms"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: waitForSingleSmsOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SmsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForMatchingEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait or return list of emails that match simple matching patterns
     
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater or equal to 1 
     - parameter matchOptions: (body)  
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - returns: Promise<[EmailPreview]>
     */
    open class func waitForMatchingEmails( inboxId: UUID,  count: Int,  matchOptions: MatchOptions,  before: Date? = nil,  since: Date? = nil,  sort: Sort_waitForMatchingEmails? = nil,  delay: Int64? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil) -> Promise<[EmailPreview]> {
        let deferred = Promise<[EmailPreview]>.pending()
        waitForMatchingEmailsWithRequestBuilder(inboxId: inboxId, count: count, matchOptions: matchOptions, before: before, since: since, sort: sort, delay: delay, timeout: timeout, unreadOnly: unreadOnly).execute { result in
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
     Wait or return list of emails that match simple matching patterns
     - POST /waitForMatchingEmails
     - Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater or equal to 1 
     - parameter matchOptions: (body)  
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - returns: RequestBuilder<[EmailPreview]> 
     */
    open class func waitForMatchingEmailsWithRequestBuilder(inboxId: UUID, count: Int, matchOptions: MatchOptions, before: Date? = nil, since: Date? = nil, sort: Sort_waitForMatchingEmails? = nil, delay: Int64? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil) -> RequestBuilder<[EmailPreview]> {
        let localVariablePath = "/waitForMatchingEmails"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: matchOptions)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "delay": (wrappedValue: delay?.encodeToJSON(), isExplode: true),
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: true),
            "unreadOnly": (wrappedValue: unreadOnly?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[EmailPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForMatchingFirstEmail: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait for or return the first email that matches provided MatchOptions array
     
     - parameter inboxId: (query) Id of the inbox we are matching an email for 
     - parameter matchOptions: (body)  
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: Promise<Email>
     */
    open class func waitForMatchingFirstEmail( inboxId: UUID,  matchOptions: MatchOptions,  timeout: Int64? = nil,  unreadOnly: Bool? = nil,  since: Date? = nil,  before: Date? = nil,  sort: Sort_waitForMatchingFirstEmail? = nil,  delay: Int64? = nil) -> Promise<Email> {
        let deferred = Promise<Email>.pending()
        waitForMatchingFirstEmailWithRequestBuilder(inboxId: inboxId, matchOptions: matchOptions, timeout: timeout, unreadOnly: unreadOnly, since: since, before: before, sort: sort, delay: delay).execute { result in
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
     Wait for or return the first email that matches provided MatchOptions array
     - POST /waitForMatchingFirstEmail
     - Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are matching an email for 
     - parameter matchOptions: (body)  
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<Email> 
     */
    open class func waitForMatchingFirstEmailWithRequestBuilder(inboxId: UUID, matchOptions: MatchOptions, timeout: Int64? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, sort: Sort_waitForMatchingFirstEmail? = nil, delay: Int64? = nil) -> RequestBuilder<Email> {
        let localVariablePath = "/waitForMatchingFirstEmail"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: matchOptions)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId.encodeToJSON(), isExplode: true),
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: true),
            "unreadOnly": (wrappedValue: unreadOnly?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "delay": (wrappedValue: delay?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Email>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForNthEmail: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
     
     - parameter inboxId: (query) Id of the inbox you are fetching emails from (optional)
     - parameter index: (query) Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 (optional, default to 0)
     - parameter timeout: (query) Max milliseconds to wait for the nth email if not already present (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: Promise<Email>
     */
    open class func waitForNthEmail( inboxId: UUID? = nil,  index: Int? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil,  since: Date? = nil,  before: Date? = nil,  sort: Sort_waitForNthEmail? = nil,  delay: Int64? = nil) -> Promise<Email> {
        let deferred = Promise<Email>.pending()
        waitForNthEmailWithRequestBuilder(inboxId: inboxId, index: index, timeout: timeout, unreadOnly: unreadOnly, since: since, before: before, sort: sort, delay: delay).execute { result in
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
     Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
     - GET /waitForNthEmail
     - If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox you are fetching emails from (optional)
     - parameter index: (query) Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 (optional, default to 0)
     - parameter timeout: (query) Max milliseconds to wait for the nth email if not already present (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<Email> 
     */
    open class func waitForNthEmailWithRequestBuilder(inboxId: UUID? = nil, index: Int? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, sort: Sort_waitForNthEmail? = nil, delay: Int64? = nil) -> RequestBuilder<Email> {
        let localVariablePath = "/waitForNthEmail"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
            "index": (wrappedValue: index?.encodeToJSON(), isExplode: true),
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: true),
            "unreadOnly": (wrappedValue: unreadOnly?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "delay": (wrappedValue: delay?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Email>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Wait for an SMS message to match the provided filter conditions such as body contains keyword.
     
     - parameter waitForSmsConditions: (body)  
     - returns: Promise<[SmsPreview]>
     */
    open class func waitForSms( waitForSmsConditions: WaitForSmsConditions) -> Promise<[SmsPreview]> {
        let deferred = Promise<[SmsPreview]>.pending()
        waitForSmsWithRequestBuilder(waitForSmsConditions: waitForSmsConditions).execute { result in
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
     Wait for an SMS message to match the provided filter conditions such as body contains keyword.
     - POST /waitForSms
     - Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter waitForSmsConditions: (body)  
     - returns: RequestBuilder<[SmsPreview]> 
     */
    open class func waitForSmsWithRequestBuilder(waitForSmsConditions: WaitForSmsConditions) -> RequestBuilder<[SmsPreview]> {
        let localVariablePath = "/waitForSms"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: waitForSmsConditions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[SmsPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}