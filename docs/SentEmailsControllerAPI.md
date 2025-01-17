# SentEmailsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllSentEmails**](SentEmailsControllerAPI#deleteallsentemails) | **DELETE** /sent | Delete all sent email receipts
[**deleteSentEmail**](SentEmailsControllerAPI#deletesentemail) | **DELETE** /sent/{id} | Delete sent email receipt
[**getAllSentTrackingPixels**](SentEmailsControllerAPI#getallsenttrackingpixels) | **GET** /sent/tracking-pixels | 
[**getRawSentEmailContents**](SentEmailsControllerAPI#getrawsentemailcontents) | **GET** /sent/{emailId}/raw | Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
[**getRawSentEmailJson**](SentEmailsControllerAPI#getrawsentemailjson) | **GET** /sent/{emailId}/raw/json | Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getSentDeliveryStatus**](SentEmailsControllerAPI#getsentdeliverystatus) | **GET** /sent/delivery-status/{deliveryId} | 
[**getSentDeliveryStatuses**](SentEmailsControllerAPI#getsentdeliverystatuses) | **GET** /sent/delivery-status | 
[**getSentDeliveryStatusesBySentId**](SentEmailsControllerAPI#getsentdeliverystatusesbysentid) | **GET** /sent/{sentId}/delivery-status | 
[**getSentEmail**](SentEmailsControllerAPI#getsentemail) | **GET** /sent/{id} | Get sent email receipt
[**getSentEmailHTMLContent**](SentEmailsControllerAPI#getsentemailhtmlcontent) | **GET** /sent/{id}/html | Get sent email HTML content
[**getSentEmailPreviewURLs**](SentEmailsControllerAPI#getsentemailpreviewurls) | **GET** /sent/{id}/urls | Get sent email URL for viewing in browser or downloading
[**getSentEmailTrackingPixels**](SentEmailsControllerAPI#getsentemailtrackingpixels) | **GET** /sent/{id}/tracking-pixels | 
[**getSentEmails**](SentEmailsControllerAPI#getsentemails) | **GET** /sent | Get all sent emails in paginated form
[**getSentEmailsWithQueueResults**](SentEmailsControllerAPI#getsentemailswithqueueresults) | **GET** /sent/queue-results | Get results of email sent with queues in paginated form
[**getSentOrganizationEmails**](SentEmailsControllerAPI#getsentorganizationemails) | **GET** /sent/organization | 
[**waitForDeliveryStatuses**](SentEmailsControllerAPI#waitfordeliverystatuses) | **GET** /sent/delivery-status/wait-for | 


# **deleteAllSentEmails**
```swift
    open class func deleteAllSentEmails() -> Promise<Void>
```

Delete all sent email receipts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all sent email receipts
SentEmailsControllerAPI.deleteAllSentEmails().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSentEmail**
```swift
    open class func deleteSentEmail( _id: UUID) -> Promise<Void>
```

Delete sent email receipt

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete sent email receipt
SentEmailsControllerAPI.deleteSentEmail(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllSentTrackingPixels**
```swift
    open class func getAllSentTrackingPixels( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllSentTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageTrackingPixelProjection>
```



Get all sent email tracking pixels in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in sent email tracking pixel list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in sent email tracking pixel list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

SentEmailsControllerAPI.getAllSentTrackingPixels(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawSentEmailContents**
```swift
    open class func getRawSentEmailContents( emailId: UUID) -> Promise<String>
```

Get raw sent email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
SentEmailsControllerAPI.getRawSentEmailContents(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawSentEmailJson**
```swift
    open class func getRawSentEmailJson( emailId: UUID) -> Promise<RawEmailJson>
```

Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
SentEmailsControllerAPI.getRawSentEmailJson(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatus**
```swift
    open class func getSentDeliveryStatus( deliveryId: UUID) -> Promise<DeliveryStatusDto>
```



Get a sent email delivery status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let deliveryId = 987 // UUID | 

SentEmailsControllerAPI.getSentDeliveryStatus(deliveryId: deliveryId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryId** | **UUID** |  | 

### Return type

[**DeliveryStatusDto**](DeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatuses**
```swift
    open class func getSentDeliveryStatuses( page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentDeliveryStatuses? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageDeliveryStatus>
```



Get all sent email delivery statuses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in delivery status list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in delivery status list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

SentEmailsControllerAPI.getSentDeliveryStatuses(page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatusesBySentId**
```swift
    open class func getSentDeliveryStatusesBySentId( sentId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentDeliveryStatusesBySentId? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageDeliveryStatus>
```



Get all sent email delivery statuses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let sentId = 987 // UUID | ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email
let page = 987 // Int | Optional page index in delivery status list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in delivery status list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

SentEmailsControllerAPI.getSentDeliveryStatusesBySentId(sentId: sentId, page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentId** | **UUID** | ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email | 
 **page** | **Int** | Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmail**
```swift
    open class func getSentEmail( _id: UUID) -> Promise<SentEmailDto>
```

Get sent email receipt

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get sent email receipt
SentEmailsControllerAPI.getSentEmail(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailHTMLContent**
```swift
    open class func getSentEmailHTMLContent( _id: UUID) -> Promise<String>
```

Get sent email HTML content

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get sent email HTML content
SentEmailsControllerAPI.getSentEmailHTMLContent(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailPreviewURLs**
```swift
    open class func getSentEmailPreviewURLs( _id: UUID) -> Promise<EmailPreviewUrls>
```

Get sent email URL for viewing in browser or downloading

Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get sent email URL for viewing in browser or downloading
SentEmailsControllerAPI.getSentEmailPreviewURLs(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailTrackingPixels**
```swift
    open class func getSentEmailTrackingPixels( _id: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentEmailTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageTrackingPixelProjection>
```



Get all tracking pixels for a sent email in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let page = 987 // Int | Optional page index in sent email tracking pixel list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in sent email tracking pixel list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

SentEmailsControllerAPI.getSentEmailTrackingPixels(_id: _id, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 
 **page** | **Int** | Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmails**
```swift
    open class func getSentEmails( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageSentEmailProjection>
```

Get all sent emails in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inboxId to filter sender of sent emails by (optional)
let page = 987 // Int | Optional page index in inbox sent email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all sent emails in paginated form
SentEmailsControllerAPI.getSentEmails(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Int** | Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailsWithQueueResults**
```swift
    open class func getSentEmailsWithQueueResults( page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentEmailsWithQueueResults? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageSentEmailWithQueueProjection>
```

Get results of email sent with queues in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in inbox sent email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get results of email sent with queues in paginated form
SentEmailsControllerAPI.getSentEmailsWithQueueResults(page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailWithQueueProjection**](PageSentEmailWithQueueProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentOrganizationEmails**
```swift
    open class func getSentOrganizationEmails( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentOrganizationEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageSentEmailProjection>
```



Get all sent organization emails in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inboxId to filter sender of sent emails by (optional)
let page = 987 // Int | Optional page index in sent email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

SentEmailsControllerAPI.getSentOrganizationEmails(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Int** | Optional page index in sent email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForDeliveryStatuses**
```swift
    open class func waitForDeliveryStatuses( sentId: UUID? = nil,  inboxId: UUID? = nil,  timeout: Int64? = nil,  index: Int? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<DeliveryStatusDto>
```



Wait for delivery statuses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let sentId = 987 // UUID | Optional sent email ID filter (optional)
let inboxId = 987 // UUID | Optional inbox ID filter (optional)
let timeout = 987 // Int64 | Optional timeout milliseconds (optional)
let index = 987 // Int | Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index=1 (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

SentEmailsControllerAPI.waitForDeliveryStatuses(sentId: sentId, inboxId: inboxId, timeout: timeout, index: index, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentId** | **UUID** | Optional sent email ID filter | [optional] 
 **inboxId** | **UUID** | Optional inbox ID filter | [optional] 
 **timeout** | **Int64** | Optional timeout milliseconds | [optional] 
 **index** | **Int** | Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index&#x3D;1 | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**DeliveryStatusDto**](DeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

