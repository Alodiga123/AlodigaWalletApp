import Foundation


/**
  Activate Card.
*/
@objc(AL_ActivateCard)
public class AL_ActivateCard : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

/// Time Zone
var cpTimeZone: String?

/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["Email","TimeZone","Status"]
}
}

/**
  Activate Card Response.
*/
@objc(AL_ActivateCardResponse)
public class AL_AL_ActivateCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Activate Card Responses.
*/
@objc(AL_AL_ActivateCardResponses)
public class AL_AL_ActivateCardResponses : SyedAbsarObjectBase {


/// Credential Response
var cpCredentialResponse: String?

/// Products
var cpProducts: String?

/// Number Card
var cpNumberCard: String?

override static func cpKeys() -> Array<String> {
return ["CredentialResponse","Products","NumberCard"]
}
}

/**
  Response.
*/
@objc(AL_Response)
public class AL_AL_Response : SyedAbsarObjectBase {


/// Fecha Hora
var cpFechaHora: String?

/// Codigo Respuesta
var cpCodigoRespuesta: String?

/// Mensaje Respuesta
var cpMensajeRespuesta: String?

/// Id Transaction
var cpIdTransaction: String?

/// Id Bussines
var cpIdBussines: String?

override static func cpKeys() -> Array<String> {
return ["FechaHora","CodigoRespuesta","MensajeRespuesta","IdTransaction","IdBussines"]
}
}

/**
  Change Status Credential Card.
*/
@objc(AL_ChangeStatusCredentialCard)
public class AL_AL_ChangeStatusCredentialCard : SyedAbsarObjectBase {


/// Bigining Atention
var cpBiginingAtention: String?

/// Ending Atention
var cpEndingAtention: String?

/// Timer Atention
var cpTimerAtention: String?

/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Ticket
var cpTicket: String?

override static func cpKeys() -> Array<String> {
return ["BiginingAtention","EndingAtention","TimerAtention","Code","Description","Ticket"]
}
}

/**
  Product.
*/
@objc(AL_Product)
public class AL_AL_Product : SyedAbsarObjectBase {


/// Category Id
var cpCategoryId: String?

/// Country Id
var cpCountryId: String?

/// Current Balance
var cpCurrentBalance: String?

/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Ind Has Associated Bank
var cpIndHasAssociatedBank: String?

/// Is Alocash Product
var cpIsAlocashProduct: String?

/// Is Default Product
var cpIsDefaultProduct: String?

/// Is Exchange Product
var cpIsExchangeProduct: String?

/// Is Free
var cpIsFree: String?

/// Is Pay Top Up
var cpIsPayTopUp: String?

/// Is Payment Info
var cpIsPaymentInfo: String?

/// Is Remettence
var cpIsRemettence: String?

/// Is Use Prepaid Card
var cpIsUsePrepaidCard: String?

/// Name
var cpName: String?

/// Reference Code
var cpReferenceCode: String?

/// Symbol
var cpSymbol: String?

/// Tax Include
var cpTaxInclude: String?

override static func cpKeys() -> Array<String> {
return ["CategoryId","CountryId","CurrentBalance","Enabled","Id","IndHasAssociatedBank","IsAlocashProduct","IsDefaultProduct","IsExchangeProduct","IsFree","IsPayTopUp","IsPaymentInfo","IsRemettence","IsUsePrepaidCard","Name","ReferenceCode","Symbol","TaxInclude"]
}
}

/**
  Abstract Wallet Entity.
*/
@objc(AL_AbstractWalletEntity)
public class AL_AbstractWalletEntity : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Category.
*/
@objc(AL_Category)
public class AL_Category : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Name"]
}
}

/**
  Maw_country.
*/
@objc(AL_Maw_country)
public class AL_Maw_country : SyedAbsarObjectBase {


/// Alternative Name1
var cpAlternativeName1: String?

/// Alternative Name2
var cpAlternativeName2: String?

/// Alternative Name3
var cpAlternativeName3: String?

/// Code
var cpCode: String?

/// Code_iso3
var cpCode_iso3: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

/// Short Name
var cpShortName: String?

override static func cpKeys() -> Array<String> {
return ["AlternativeName1","AlternativeName2","AlternativeName3","Code","Code_iso3","Id","Name","ShortName"]
}
}

/**
  Desactivate Card.
*/
@objc(AL_DesactivateCard)
public class AL_DesactivateCard : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

/// Time Zone
var cpTimeZone: String?

/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["Email","TimeZone","Status"]
}
}

/**
  Desactivate Card Response.
*/
@objc(AL_DesactivateCardResponse)
public class AL_DesactivateCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Desactivate Card Responses.
*/
@objc(AL_DesactivateCardResponses)
public class AL_DesactivateCardResponses : SyedAbsarObjectBase {


/// Credential Response
var cpCredentialResponse: String?

override static func cpKeys() -> Array<String> {
return ["CredentialResponse"]
}
}

/**
  Save Recharge Top Up.
*/
@objc(AL_SaveRechargeTopUp)
public class AL_SaveRechargeTopUp : SyedAbsarObjectBase {


/// Email User
var cpEmailUser: String?

/// Product Id
var cpProductId: String?

/// Cryptogram User
var cpCryptogramUser: String?

/// Skud Id
var cpSkudId: String?

/// Destination Number
var cpDestinationNumber: String?

/// Sender Number
var cpSenderNumber: String?

/// Amount Recharge
var cpAmountRecharge: String?

/// Amount Payment
var cpAmountPayment: String?

/// Language
var cpLanguage: String?

override static func cpKeys() -> Array<String> {
return ["EmailUser","ProductId","CryptogramUser","SkudId","DestinationNumber","SenderNumber","AmountRecharge","AmountPayment","Language"]
}
}

/**
  Save Recharge Top Up Response.
*/
@objc(AL_SaveRechargeTopUpResponse)
public class AL_SaveRechargeTopUpResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Transaction Response.
*/
@objc(AL_TransactionResponse)
public class AL_TransactionResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

/// Products
var cpProducts: String?

/// Amount Commission
var cpAmountCommission: String?

/// Value Commission
var cpValueCommission: String?

/// Total Debit
var cpTotalDebit: String?

/// Amount Conversion
var cpAmountConversion: String?

/// Exchange Rate Product Source
var cpExchangeRateProductSource: String?

/// Exchange Rate Product Destination
var cpExchangeRateProductDestination: String?

/// Is Percent Commision
var cpIsPercentCommision: CShort?

override static func cpKeys() -> Array<String> {
return ["Response","Products","AmountCommission","ValueCommission","TotalDebit","AmountConversion","ExchangeRateProductSource","ExchangeRateProductDestination","IsPercentCommision"]
}
}

/**
  Maw_transaction.
*/
@objc(AL_Maw_transaction)
public class AL_Maw_transaction : SyedAbsarObjectBase {


/// Amount
var cpAmount: String?

/// Bill Payment Description
var cpBillPaymentDescription: String?

/// Business Destination Id
var cpBusinessDestinationId: String?

/// Business Id
var cpBusinessId: String?

/// Commision Amount
var cpCommisionAmount: String?

/// Concept
var cpConcept: String?

/// Creation Date
var cpCreationDate: String?

/// Daily Closing Id
var cpDailyClosingId: String?

/// Destination User
var cpDestinationUser: String?

/// External Id
var cpExternalId: String?

/// Id
var cpId: String?

/// Ind Closed
var cpIndClosed: String?

/// Payment Info Id
var cpPaymentInfoId: String?

/// Product Id
var cpProductId: String?

/// Promotion Amount
var cpPromotionAmount: String?

/// Top Up Description
var cpTopUpDescription: String?

/// Total Alopoints Used
var cpTotalAlopointsUsed: String?

/// Total Amount
var cpTotalAmount: String?

/// Total Tax
var cpTotalTax: String?

/// Transaction Business Id
var cpTransactionBusinessId: String?

/// Transaction Number
var cpTransactionNumber: String?

/// Transaction Sequence
var cpTransactionSequence: String?

/// Transaction Source Id
var cpTransactionSourceId: String?

/// Transaction Status
var cpTransactionStatus: String?

/// Transaction Type
var cpTransactionType: String?

/// Transaction Type Id
var cpTransactionTypeId: String?

/// User Destination Id
var cpUserDestinationId: String?

/// User Source Id
var cpUserSourceId: String?

override static func cpKeys() -> Array<String> {
return ["Amount","BillPaymentDescription","BusinessDestinationId","BusinessId","CommisionAmount","Concept","CreationDate","DailyClosingId","DestinationUser","ExternalId","Id","IndClosed","PaymentInfoId","ProductId","PromotionAmount","TopUpDescription","TotalAlopointsUsed","TotalAmount","TotalTax","TransactionBusinessId","TransactionNumber","TransactionSequence","TransactionSourceId","TransactionStatus","TransactionType","TransactionTypeId","UserDestinationId","UserSourceId"]
}
}

/**
  Daily Closing.
*/
@objc(AL_DailyClosing)
public class AL_DailyClosing : SyedAbsarObjectBase {


/// Closing Date
var cpClosingDate: String?

/// Closing End Time
var cpClosingEndTime: String?

/// Closing Start Time
var cpClosingStartTime: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Origin Application Id
var cpOriginApplicationId: String?

/// Total Transactions
var cpTotalTransactions: String?

/// Transactions Amount
var cpTransactionsAmount: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["ClosingDate","ClosingEndTime","ClosingStartTime","CreateDate","Id","OriginApplicationId","TotalTransactions","TransactionsAmount","UpdateDate"]
}
}

/**
  Maw_origin_application.
*/
@objc(AL_Maw_origin_application)
public class AL_Maw_origin_application : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Code","Id","Name"]
}
}

/**
  Payment Info.
*/
@objc(AL_PaymentInfo)
public class AL_PaymentInfo : SyedAbsarObjectBase {


/// Beginning Date
var cpBeginningDate: String?

/// Billing Address Id
var cpBillingAddressId: String?

/// Credit Card C V V
var cpCreditCardCVV: String?

/// Credit Card Date
var cpCreditCardDate: String?

/// Credit Card Name
var cpCreditCardName: String?

/// Credit Card Number
var cpCreditCardNumber: String?

/// Credit Card Type Id
var cpCreditCardTypeId: String?

/// Enabled
var cpEnabled: String?

/// Ending Date
var cpEndingDate: String?

/// Id
var cpId: String?

/// Payment Patner Id
var cpPaymentPatnerId: String?

/// Payment Type Id
var cpPaymentTypeId: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["BeginningDate","BillingAddressId","CreditCardCVV","CreditCardDate","CreditCardName","CreditCardNumber","CreditCardTypeId","Enabled","EndingDate","Id","PaymentPatnerId","PaymentTypeId","UserId"]
}
}

/**
  Maw_address.
*/
@objc(AL_Maw_address)
public class AL_Maw_address : SyedAbsarObjectBase {


/// Address Line1
var cpAddressLine1: String?

/// Address Line2
var cpAddressLine2: String?

/// Address Type Id
var cpAddressTypeId: String?

/// City Id
var cpCityId: String?

/// Country Id
var cpCountryId: String?

/// County Id
var cpCountyId: String?

/// Edification Type Id
var cpEdificationTypeId: String?

/// Floor
var cpFloor: String?

/// Id
var cpId: String?

/// Ind Main Address
var cpIndMainAddress: String?

/// Name Edification
var cpNameEdification: String?

/// Name Street
var cpNameStreet: String?

/// Street Type Id
var cpStreetTypeId: String?

/// Tower
var cpTower: String?

/// Urbanization
var cpUrbanization: String?

/// Zip Code
var cpZipCode: String?

override static func cpKeys() -> Array<String> {
return ["AddressLine1","AddressLine2","AddressTypeId","CityId","CountryId","CountyId","EdificationTypeId","Floor","Id","IndMainAddress","NameEdification","NameStreet","StreetTypeId","Tower","Urbanization","ZipCode"]
}
}

/**
  Maw_address_type.
*/
@objc(AL_Maw_address_type)
public class AL_Maw_address_type : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  City.
*/
@objc(AL_City)
public class AL_City : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

/// State Id
var cpStateId: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name","StateId"]
}
}

/**
  Maw_state.
*/
@objc(AL_Maw_state)
public class AL_Maw_state : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","Id","Name"]
}
}

/**
  County.
*/
@objc(AL_County)
public class AL_County : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

/// Short Name
var cpShortName: String?

/// State Id
var cpStateId: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name","ShortName","StateId"]
}
}

/**
  Edification Type.
*/
@objc(AL_EdificationType)
public class AL_EdificationType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Maw_street_type.
*/
@objc(AL_Maw_street_type)
public class AL_Maw_street_type : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Creditcard Type.
*/
@objc(AL_CreditcardType)
public class AL_CreditcardType : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Lengh
var cpLengh: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Lengh","Name"]
}
}

/**
  Payment Patner.
*/
@objc(AL_PaymentPatner)
public class AL_PaymentPatner : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Encription Key
var cpEncriptionKey: String?

/// Id
var cpId: String?

/// Integration Type Id
var cpIntegrationTypeId: String?

/// Name
var cpName: String?

/// Payment User
var cpPaymentUser: String?

/// Test Mode
var cpTestMode: String?

/// Url Confirmation
var cpUrlConfirmation: String?

/// Url Response
var cpUrlResponse: String?

/// Url Submit
var cpUrlSubmit: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","EncriptionKey","Id","IntegrationTypeId","Name","PaymentUser","TestMode","UrlConfirmation","UrlResponse","UrlSubmit"]
}
}

/**
  Payment Integration Type.
*/
@objc(AL_PaymentIntegrationType)
public class AL_PaymentIntegrationType : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Name"]
}
}

/**
  Payment Type.
*/
@objc(AL_PaymentType)
public class AL_PaymentType : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Name"]
}
}

/**
  Transaction Source.
*/
@objc(AL_TransactionSource)
public class AL_TransactionSource : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Code","Id","Name"]
}
}

/**
  Transaction Type.
*/
@objc(AL_TransactionType)
public class AL_TransactionType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Value
var cpValue: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id","Value"]
}
}

/**
  Manual Recharge.
*/
@objc(AL_ManualRecharge)
public class AL_ManualRecharge : SyedAbsarObjectBase {


/// Bank Id
var cpBankId: String?

/// Email User
var cpEmailUser: String?

/// Reference Number Operation
var cpReferenceNumberOperation: String?

/// Amount Recharge
var cpAmountRecharge: String?

/// Product Id
var cpProductId: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Document Type Id
var cpDocumentTypeId: String?

/// Origin Application Id
var cpOriginApplicationId: String?

override static func cpKeys() -> Array<String> {
return ["BankId","EmailUser","ReferenceNumberOperation","AmountRecharge","ProductId","ConceptTransaction","DocumentTypeId","OriginApplicationId"]
}
}

/**
  Manual Recharge Response.
*/
@objc(AL_ManualRechargeResponse)
public class AL_ManualRechargeResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Status Affiliation Request By User.
*/
@objc(AL_GetStatusAffiliationRequestByUser)
public class AL_GetStatusAffiliationRequestByUser : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Request Type Id
var cpRequestTypeId: String?

override static func cpKeys() -> Array<String> {
return ["UserId","RequestTypeId"]
}
}

/**
  Get Status Affiliation Request By User Response.
*/
@objc(AL_GetStatusAffiliationRequestByUserResponse)
public class AL_GetStatusAffiliationRequestByUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Status Request Response.
*/
@objc(AL_StatusRequestResponse)
public class AL_StatusRequestResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

override static func cpKeys() -> Array<String> {
return ["Response"]
}
}

/**
  Status Request.
*/
@objc(AL_StatusRequest)
public class AL_StatusRequest : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Empty List Exception.
*/
@objc(AL_EmptyListException)
public class AL_EmptyListException : SyedAbsarObjectBase {


/// Message
var cpMessage: String?

override static func cpKeys() -> Array<String> {
return ["Message"]
}
}

/**
  Get Language.
*/
@objc(AL_GetLanguage)
public class AL_GetLanguage : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Language Response.
*/
@objc(AL_GetLanguageResponse)
public class AL_GetLanguageResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Language List Response.
*/
@objc(AL_LanguageListResponse)
public class AL_LanguageListResponse : SyedAbsarObjectBase {


/// Languages
var cpLanguages: String?

override static func cpKeys() -> Array<String> {
return ["Languages"]
}
}

/**
  Language.
*/
@objc(AL_Language)
public class AL_Language : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Iso
var cpIso: String?

override static func cpKeys() -> Array<String> {
return ["Description","Enabled","Id","Iso"]
}
}

/**
  Get Balance History By Product And User.
*/
@objc(AL_GetBalanceHistoryByProductAndUser)
public class AL_GetBalanceHistoryByProductAndUser : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Product Id
var cpProductId: String?

override static func cpKeys() -> Array<String> {
return ["UserId","ProductId"]
}
}

/**
  Get Balance History By Product And User Response.
*/
@objc(AL_GetBalanceHistoryByProductAndUserResponse)
public class AL_GetBalanceHistoryByProductAndUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Balance History Response.
*/
@objc(AL_BalanceHistoryResponse)
public class AL_BalanceHistoryResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

override static func cpKeys() -> Array<String> {
return ["Response"]
}
}

/**
  Balance History.
*/
@objc(AL_BalanceHistory)
public class AL_BalanceHistory : SyedAbsarObjectBase {


/// Adjusment Info
var cpAdjusmentInfo: String?

/// Business Id
var cpBusinessId: String?

/// Current Amount
var cpCurrentAmount: String?

/// Date
var cpDate: String?

/// Id
var cpId: String?

/// Old Amount
var cpOldAmount: String?

/// Product Id
var cpProductId: String?

/// Transaction Business Id
var cpTransactionBusinessId: String?

/// Transaction Id
var cpTransactionId: String?

/// User Id
var cpUserId: String?

/// Version
var cpVersion: String?

override static func cpKeys() -> Array<String> {
return ["AdjusmentInfo","BusinessId","CurrentAmount","Date","Id","OldAmount","ProductId","TransactionBusinessId","TransactionId","UserId","Version"]
}
}

/**
  Get Transactions By Business Id Between Date.
*/
@objc(AL_GetTransactionsByBusinessIdBetweenDate)
public class AL_GetTransactionsByBusinessIdBetweenDate : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// From
var cpFrom: String?

/// To
var cpTo: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","From","To"]
}
}

/**
  Get Transactions By Business Id Between Date Response.
*/
@objc(AL_GetTransactionsByBusinessIdBetweenDateResponse)
public class AL_GetTransactionsByBusinessIdBetweenDateResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Transaction List Response.
*/
@objc(AL_TransactionListResponse)
public class AL_TransactionListResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

/// Transactions
var cpTransactions: String?

override static func cpKeys() -> Array<String> {
return ["Response","Transactions"]
}
}

/**
  Transfer Card To Card Autorization.
*/
@objc(AL_TransferCardToCardAutorization)
public class AL_TransferCardToCardAutorization : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Number Card Origin
var cpNumberCardOrigin: String?

/// Number Card Destinate
var cpNumberCardDestinate: String?

/// Balance
var cpBalance: String?

/// Email Destination
var cpEmailDestination: String?

/// Concept Transaction
var cpConceptTransaction: String?

override static func cpKeys() -> Array<String> {
return ["UserId","NumberCardOrigin","NumberCardDestinate","Balance","EmailDestination","ConceptTransaction"]
}
}

/**
  Transfer Card To Card Autorization Response.
*/
@objc(AL_TransferCardToCardAutorizationResponse)
public class AL_TransferCardToCardAutorizationResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Transfer Card To Card Responses.
*/
@objc(AL_TransferCardToCardResponses)
public class AL_TransferCardToCardResponses : SyedAbsarObjectBase {


/// Transfer Card To Card Credential
var cpTransferCardToCardCredential: String?

/// Products
var cpProducts: String?

override static func cpKeys() -> Array<String> {
return ["TransferCardToCardCredential","Products"]
}
}

/**
  Transfer Card To Card Credential.
*/
@objc(AL_TransferCardToCardCredential)
public class AL_TransferCardToCardCredential : SyedAbsarObjectBase {


/// Code Error
var cpCodeError: String?

/// Message Error
var cpMessageError: String?

/// Code Answer
var cpCodeAnswer: String?

/// Message Response
var cpMessageResponse: String?

/// Code Authorization
var cpCodeAuthorization: String?

/// Post Balance
var cpPostBalance: String?

/// Balance
var cpBalance: String?

/// Rear Balance Account Destination
var cpRearBalanceAccountDestination: String?

/// Destination Account Balance
var cpDestinationAccountBalance: String?

override static func cpKeys() -> Array<String> {
return ["CodeError","MessageError","CodeAnswer","MessageResponse","CodeAuthorization","PostBalance","Balance","RearBalanceAccountDestination","DestinationAccountBalance"]
}
}

/**
  Change Status Payment Info.
*/
@objc(AL_ChangeStatusPaymentInfo)
public class AL_ChangeStatusPaymentInfo : SyedAbsarObjectBase {


/// User Api
var cpUserApi: String?

/// Password Api
var cpPasswordApi: String?

/// User Id
var cpUserId: String?

/// Payment Info Id
var cpPaymentInfoId: String?

/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["UserApi","PasswordApi","UserId","PaymentInfoId","Status"]
}
}

/**
  Change Status Payment Info Response.
*/
@objc(AL_ChangeStatusPaymentInfoResponse)
public class AL_ChangeStatusPaymentInfoResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Payment Info Response.
*/
@objc(AL_PaymentInfoResponse)
public class AL_PaymentInfoResponse : SyedAbsarObjectBase {


/// Payment Info
var cpPaymentInfo: String?

override static func cpKeys() -> Array<String> {
return ["PaymentInfo"]
}
}

/**
  Get Document Person Type By Country.
*/
@objc(AL_GetDocumentPersonTypeByCountry)
public class AL_GetDocumentPersonTypeByCountry : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Origin Aplication Id
var cpOriginAplicationId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","OriginAplicationId"]
}
}

/**
  Get Document Person Type By Country Response.
*/
@objc(AL_GetDocumentPersonTypeByCountryResponse)
public class AL_GetDocumentPersonTypeByCountryResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Document Person Type List Response.
*/
@objc(AL_DocumentPersonTypeListResponse)
public class AL_DocumentPersonTypeListResponse : SyedAbsarObjectBase {


/// Documents Person Types
var cpDocumentsPersonTypes: String?

override static func cpKeys() -> Array<String> {
return ["DocumentsPersonTypes"]
}
}

/**
  Documents Person Type.
*/
@objc(AL_DocumentsPersonType)
public class AL_DocumentsPersonType : SyedAbsarObjectBase {


/// Code Identification
var cpCodeIdentification: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Person Type Id
var cpPersonTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CodeIdentification","Description","Id","PersonTypeId"]
}
}

/**
  Maw_person_type.
*/
@objc(AL_Maw_person_type)
public class AL_Maw_person_type : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Ind Natural Person
var cpIndNaturalPerson: String?

/// Origin Application Id
var cpOriginApplicationId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","Description","Id","IndNaturalPerson","OriginApplicationId"]
}
}

/**
  Save Payment Shop.
*/
@objc(AL_SavePaymentShop)
public class AL_SavePaymentShop : SyedAbsarObjectBase {


/// Cryptogram Shop
var cpCryptogramShop: String?

/// Email User
var cpEmailUser: String?

/// Product Id
var cpProductId: String?

/// Amount Payment
var cpAmountPayment: String?

/// Concept Transaction
var cpConceptTransaction: String?

override static func cpKeys() -> Array<String> {
return ["CryptogramShop","EmailUser","ProductId","AmountPayment","ConceptTransaction"]
}
}

/**
  Save Payment Shop Response.
*/
@objc(AL_SavePaymentShopResponse)
public class AL_SavePaymentShopResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Countries.
*/
@objc(AL_GetCountries)
public class AL_GetCountries : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Countries Response.
*/
@objc(AL_GetCountriesResponse)
public class AL_GetCountriesResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Country List Response.
*/
@objc(AL_CountryListResponse)
public class AL_CountryListResponse : SyedAbsarObjectBase {


/// Countries
var cpCountries: String?

override static func cpKeys() -> Array<String> {
return ["Countries"]
}
}

/**
  Save Address.
*/
@objc(AL_SaveAddress)
public class AL_SaveAddress : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Estado
var cpEstado: String?

/// Ciudad
var cpCiudad: String?

/// Zip Code
var cpZipCode: String?

/// Addres1
var cpAddres1: String?

override static func cpKeys() -> Array<String> {
return ["UserId","Estado","Ciudad","ZipCode","Addres1"]
}
}

/**
  Save Address Response.
*/
@objc(AL_SaveAddressResponse)
public class AL_SaveAddressResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Exception.
*/
@objc(AL_Exception)
public class AL_Exception : SyedAbsarObjectBase {


/// Message
var cpMessage: String?

override static func cpKeys() -> Array<String> {
return ["Message"]
}
}

/**
  Exchange Product.
*/
@objc(AL_ExchangeProduct)
public class AL_ExchangeProduct : SyedAbsarObjectBase {


/// Email User
var cpEmailUser: String?

/// Product Source Id
var cpProductSourceId: String?

/// Product Destination Id
var cpProductDestinationId: String?

/// Amount Exchange
var cpAmountExchange: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Included Amount
var cpIncludedAmount: String?

override static func cpKeys() -> Array<String> {
return ["EmailUser","ProductSourceId","ProductDestinationId","AmountExchange","ConceptTransaction","IncludedAmount"]
}
}

/**
  Exchange Product Response.
*/
@objc(AL_ExchangeProductResponse)
public class AL_ExchangeProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Products Recharge Payment By User Id.
*/
@objc(AL_GetProductsRechargePaymentByUserId)
public class AL_GetProductsRechargePaymentByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Products Recharge Payment By User Id Response.
*/
@objc(AL_GetProductsRechargePaymentByUserIdResponse)
public class AL_GetProductsRechargePaymentByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Product List Response.
*/
@objc(AL_ProductListResponse)
public class AL_ProductListResponse : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

override static func cpKeys() -> Array<String> {
return ["Products"]
}
}

/**
  Get Top Up Countries.
*/
@objc(AL_GetTopUpCountries)
public class AL_GetTopUpCountries : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Top Up Countries Response.
*/
@objc(AL_GetTopUpCountriesResponse)
public class AL_GetTopUpCountriesResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Top Up Country List Response.
*/
@objc(AL_TopUpCountryListResponse)
public class AL_TopUpCountryListResponse : SyedAbsarObjectBase {


/// Top Up Countrys
var cpTopUpCountrys: String?

override static func cpKeys() -> Array<String> {
return ["TopUpCountrys"]
}
}

/**
  Top Up Country.
*/
@objc(AL_TopUpCountry)
public class AL_TopUpCountry : SyedAbsarObjectBase {


/// Alternative Name1
var cpAlternativeName1: String?

/// Alternative Name2
var cpAlternativeName2: String?

/// Alternative Name3
var cpAlternativeName3: String?

/// Code
var cpCode: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

/// Short Name
var cpShortName: String?

override static func cpKeys() -> Array<String> {
return ["AlternativeName1","AlternativeName2","AlternativeName3","Code","Id","Name","ShortName"]
}
}

/**
  Get Countries Has Bank.
*/
@objc(AL_GetCountriesHasBank)
public class AL_GetCountriesHasBank : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Countries Has Bank Response.
*/
@objc(AL_GetCountriesHasBankResponse)
public class AL_GetCountriesHasBankResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Activate Cardby Business.
*/
@objc(AL_ActivateCardbyBusiness)
public class AL_ActivateCardbyBusiness : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// User Email
var cpUserEmail: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","UserEmail","TimeZone"]
}
}

/**
  Activate Cardby Business Response.
*/
@objc(AL_ActivateCardbyBusinessResponse)
public class AL_ActivateCardbyBusinessResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Products By Bank Id.
*/
@objc(AL_GetProductsByBankId)
public class AL_GetProductsByBankId : SyedAbsarObjectBase {


/// Bank Id
var cpBankId: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["BankId","UserId"]
}
}

/**
  Get Products By Bank Id Response.
*/
@objc(AL_GetProductsByBankIdResponse)
public class AL_GetProductsByBankIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Bank By Country App.
*/
@objc(AL_GetBankByCountryApp)
public class AL_GetBankByCountryApp : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId"]
}
}

/**
  Get Bank By Country App Response.
*/
@objc(AL_GetBankByCountryAppResponse)
public class AL_GetBankByCountryAppResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Bank List Response.
*/
@objc(AL_BankListResponse)
public class AL_BankListResponse : SyedAbsarObjectBase {


/// Banks
var cpBanks: String?

override static func cpKeys() -> Array<String> {
return ["Banks"]
}
}

/**
  Maw_bank.
*/
@objc(AL_Maw_bank)
public class AL_Maw_bank : SyedAbsarObjectBase {


/// Aba Code
var cpAbaCode: String?

/// Country Id
var cpCountryId: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

/// Swift Code
var cpSwiftCode: String?

override static func cpKeys() -> Array<String> {
return ["AbaCode","CountryId","Id","Name","SwiftCode"]
}
}

/**
  Get Card By Email.
*/
@objc(AL_GetCardByEmail)
public class AL_GetCardByEmail : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["Email"]
}
}

/**
  Get Card By Email Response.
*/
@objc(AL_GetCardByEmailResponse)
public class AL_GetCardByEmailResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Card Response.
*/
@objc(AL_CardResponse)
public class AL_CardResponse : SyedAbsarObjectBase {


/// Card
var cpCard: String?

/// Alias Card
var cpAliasCard: String?

/// Name
var cpName: String?

/// Email
var cpEmail: String?

/// Number Phone
var cpNumberPhone: String?

/// Card Holder
var cpCardHolder: String?

override static func cpKeys() -> Array<String> {
return ["Card","AliasCard","Name","Email","NumberPhone","CardHolder"]
}
}

/**
  Card.
*/
@objc(AL_Card)
public class AL_Card : SyedAbsarObjectBase {


/// Alias
var cpAlias: String?

/// Assigned Account
var cpAssignedAccount: String?

/// Automatic Renewal Date
var cpAutomaticRenewalDate: String?

/// Card Holder
var cpCardHolder: String?

/// Card Number
var cpCardNumber: String?

/// Card Status Id
var cpCardStatusId: String?

/// Create Date
var cpCreateDate: String?

/// Expiration Date
var cpExpirationDate: String?

/// I C V V Magnetic Strip
var cpICVVMagneticStrip: String?

/// Id
var cpId: String?

/// Ind Delivery Request
var cpIndDeliveryRequest: String?

/// Ind Pending New Card Issue
var cpIndPendingNewCardIssue: String?

/// Ind Received Card
var cpIndReceivedCard: String?

/// Ind Renewal
var cpIndRenewal: String?

/// Issue Date
var cpIssueDate: String?

/// Observations
var cpObservations: String?

/// Person Customer Id
var cpPersonCustomerId: String?

/// Pin Lenght
var cpPinLenght: String?

/// Pin Offset
var cpPinOffset: String?

/// Product Id
var cpProductId: String?

/// Program Id
var cpProgramId: String?

/// Security Code Card
var cpSecurityCodeCard: String?

/// Security Code Magnetic Strip
var cpSecurityCodeMagneticStrip: String?

/// Sequential Number
var cpSequentialNumber: String?

/// Status Update Reason Date
var cpStatusUpdateReasonDate: String?

/// Status Update Reason Id
var cpStatusUpdateReasonId: String?

/// Update Date
var cpUpdateDate: String?

/// User Responsible Status Update Id
var cpUserResponsibleStatusUpdateId: String?

/// Validation Data
var cpValidationData: String?

override static func cpKeys() -> Array<String> {
return ["Alias","AssignedAccount","AutomaticRenewalDate","CardHolder","CardNumber","CardStatusId","CreateDate","ExpirationDate","ICVVMagneticStrip","Id","IndDeliveryRequest","IndPendingNewCardIssue","IndReceivedCard","IndRenewal","IssueDate","Observations","PersonCustomerId","PinLenght","PinOffset","ProductId","ProgramId","SecurityCodeCard","SecurityCodeMagneticStrip","SequentialNumber","StatusUpdateReasonDate","StatusUpdateReasonId","UpdateDate","UserResponsibleStatusUpdateId","ValidationData"]
}
}

/**
  Abstract Distribution Entity.
*/
@objc(AL_AbstractDistributionEntity)
public class AL_AbstractDistributionEntity : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Card Status.
*/
@objc(AL_CardStatus)
public class AL_CardStatus : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Cms_person.
*/
@objc(AL_Cms_person)
public class AL_Cms_person : SyedAbsarObjectBase {


/// Applicant Natural Person
var cpApplicantNaturalPerson: String?

/// Card Request Natural Person
var cpCardRequestNaturalPerson: String?

/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Email
var cpEmail: String?

/// Employee
var cpEmployee: String?

/// Id
var cpId: String?

/// Issuer
var cpIssuer: String?

/// Legal Customer
var cpLegalCustomer: String?

/// Legal Person
var cpLegalPerson: String?

/// Legal Representatives
var cpLegalRepresentatives: String?

/// Natural Customer
var cpNaturalCustomer: String?

/// Natural Person
var cpNaturalPerson: String?

/// Person Classification Id
var cpPersonClassificationId: String?

/// Person Has Address
var cpPersonHasAddress: String?

/// Person Type Id
var cpPersonTypeId: String?

/// Phone Person
var cpPhonePerson: String?

/// Plastic Manufacturer
var cpPlasticManufacturer: String?

/// Program
var cpProgram: String?

/// Program1
var cpProgram1: String?

/// Request
var cpRequest: String?

/// Review O F A C
var cpReviewOFAC: String?

/// Update Date
var cpUpdateDate: String?

/// User
var cpUser: String?

override static func cpKeys() -> Array<String> {
return ["ApplicantNaturalPerson","CardRequestNaturalPerson","CountryId","CreateDate","Email","Employee","Id","Issuer","LegalCustomer","LegalPerson","LegalRepresentatives","NaturalCustomer","NaturalPerson","PersonClassificationId","PersonHasAddress","PersonTypeId","PhonePerson","PlasticManufacturer","Program","Program1","Request","ReviewOFAC","UpdateDate","User"]
}
}

/**
  Applicant Natural Person.
*/
@objc(AL_ApplicantNaturalPerson)
public class AL_ApplicantNaturalPerson : SyedAbsarObjectBase {


/// Applicant Natural Person
var cpApplicantNaturalPerson: String?

/// Applicant Parent Id
var cpApplicantParentId: String?

/// Citizen
var cpCitizen: String?

/// Civil Status Id
var cpCivilStatusId: String?

/// Create Date
var cpCreateDate: String?

/// Date Birth
var cpDateBirth: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: String?

/// Family Responsibilities
var cpFamilyResponsibilities: String?

/// First Names
var cpFirstNames: String?

/// Gender
var cpGender: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Identification Number Old
var cpIdentificationNumberOld: String?

/// Kin Ship Applicant Id
var cpKinShipApplicantId: String?

/// Last Names
var cpLastNames: String?

/// Married Last Name
var cpMarriedLastName: String?

/// Observations
var cpObservations: String?

/// Person Id
var cpPersonId: String?

/// Place Birth
var cpPlaceBirth: String?

/// Profession Id
var cpProfessionId: String?

/// Promotion
var cpPromotion: String?

/// Recommendation
var cpRecommendation: String?

/// Request
var cpRequest: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

/// Tax Information Registry
var cpTaxInformationRegistry: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["ApplicantNaturalPerson","ApplicantParentId","Citizen","CivilStatusId","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FamilyResponsibilities","FirstNames","Gender","Id","IdentificationNumber","IdentificationNumberOld","KinShipApplicantId","LastNames","MarriedLastName","Observations","PersonId","PlaceBirth","ProfessionId","Promotion","Recommendation","Request","StatusApplicantId","TaxInformationRegistry","UpdateDate"]
}
}

/**
  Cms_civil Status.
*/
@objc(AL_Cms_civilStatus)
public class AL_Cms_civilStatus : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Language Id
var cpLanguageId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","LanguageId"]
}
}

/**
  Cms_language.
*/
@objc(AL_Cms_language)
public class AL_Cms_language : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Iso
var cpIso: String?

override static func cpKeys() -> Array<String> {
return ["Description","Enabled","Id","Iso"]
}
}

/**
  Cms_documents Person Type.
*/
@objc(AL_Cms_documentsPersonType)
public class AL_Cms_documentsPersonType : SyedAbsarObjectBase {


/// Code Identification Number
var cpCodeIdentificationNumber: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Person Type Id
var cpPersonTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CodeIdentificationNumber","Description","Id","PersonTypeId"]
}
}

/**
  Cms_person Type.
*/
@objc(AL_Cms_personType)
public class AL_Cms_personType : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Ind Natural Person
var cpIndNaturalPerson: String?

/// Origin Application Id
var cpOriginApplicationId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","Description","Id","IndNaturalPerson","OriginApplicationId"]
}
}

/**
  Cms_country.
*/
@objc(AL_Cms_country)
public class AL_Cms_country : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Code Iso2
var cpCodeIso2: String?

/// Code Iso3
var cpCodeIso3: String?

/// Currency Id
var cpCurrencyId: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Code","CodeIso2","CodeIso3","CurrencyId","Id","Name"]
}
}

/**
  Currency.
*/
@objc(AL_Currency)
public class AL_Currency : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

/// Symbol
var cpSymbol: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name","Symbol"]
}
}

/**
  Cms_origin Application.
*/
@objc(AL_Cms_originApplication)
public class AL_Cms_originApplication : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Kin Ship Applicant.
*/
@objc(AL_KinShipApplicant)
public class AL_KinShipApplicant : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Language Id
var cpLanguageId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","LanguageId"]
}
}

/**
  Cms_profession.
*/
@objc(AL_Cms_profession)
public class AL_Cms_profession : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Request.
*/
@objc(AL_Request)
public class AL_Request : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Ind Person Natural Request
var cpIndPersonNaturalRequest: String?

/// Person Customer Id
var cpPersonCustomerId: String?

/// Person Id
var cpPersonId: String?

/// Person Type Id
var cpPersonTypeId: String?

/// Product Type Id
var cpProductTypeId: String?

/// Program Id
var cpProgramId: String?

/// Reason Rejection Request Id
var cpReasonRejectionRequestId: String?

/// Request Date
var cpRequestDate: String?

/// Request Number
var cpRequestNumber: String?

/// Request Type Id
var cpRequestTypeId: String?

/// Status Request Id
var cpStatusRequestId: String?

/// Update Date
var cpUpdateDate: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","CreateDate","Id","IndPersonNaturalRequest","PersonCustomerId","PersonId","PersonTypeId","ProductTypeId","ProgramId","ReasonRejectionRequestId","RequestDate","RequestNumber","RequestTypeId","StatusRequestId","UpdateDate","UserId"]
}
}

/**
  Product Type.
*/
@objc(AL_ProductType)
public class AL_ProductType : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Program.
*/
@objc(AL_Program)
public class AL_Program : SyedAbsarObjectBase {


/// Bin Sponsor Id
var cpBinSponsorId: String?

/// Biniin Number
var cpBiniinNumber: String?

/// Card Issuance Type Id
var cpCardIssuanceTypeId: String?

/// Card Program Manager Id
var cpCardProgramManagerId: String?

/// Cash Access
var cpCashAccess: CShort?

/// Contract Date
var cpContractDate: String?

/// Create Date
var cpCreateDate: String?

/// Currency Id
var cpCurrencyId: String?

/// Description
var cpDescription: String?

/// Expected Launch Date
var cpExpectedLaunchDate: String?

/// Id
var cpId: String?

/// Ind Wallet
var cpIndWallet: String?

/// Issuer Id
var cpIssuerId: String?

/// Name
var cpName: String?

/// Other Responsible Network Reporting
var cpOtherResponsibleNetworkReporting: String?

/// Other Source Funds
var cpOtherSourceFunds: String?

/// Product Type Id
var cpProductTypeId: String?

/// Program Owner Id
var cpProgramOwnerId: String?

/// Program Type Id
var cpProgramTypeId: String?

/// Reloadable
var cpReloadable: CShort?

/// Responsible Network Reporting Id
var cpResponsibleNetworkReportingId: String?

/// Shared Brand
var cpSharedBrand: CShort?

/// Source Funds Id
var cpSourceFundsId: String?

/// Update Date
var cpUpdateDate: String?

/// Use International
var cpUseInternational: CShort?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["BinSponsorId","BiniinNumber","CardIssuanceTypeId","CardProgramManagerId","CashAccess","ContractDate","CreateDate","CurrencyId","Description","ExpectedLaunchDate","Id","IndWallet","IssuerId","Name","OtherResponsibleNetworkReporting","OtherSourceFunds","ProductTypeId","ProgramOwnerId","ProgramTypeId","Reloadable","ResponsibleNetworkReportingId","SharedBrand","SourceFundsId","UpdateDate","UseInternational","WebSite"]
}
}

/**
  Bin Sponsor.
*/
@objc(AL_BinSponsor)
public class AL_BinSponsor : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Card Issuance Type.
*/
@objc(AL_CardIssuanceType)
public class AL_CardIssuanceType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Issuer.
*/
@objc(AL_Issuer)
public class AL_Issuer : SyedAbsarObjectBase {


/// Aba Code
var cpAbaCode: String?

/// Bin Number
var cpBinNumber: String?

/// Contract Number
var cpContractNumber: String?

/// Country Id
var cpCountryId: String?

/// Document Identification
var cpDocumentIdentification: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Email Person Contact
var cpEmailPersonContact: String?

/// Fax Number
var cpFaxNumber: String?

/// Id
var cpId: String?

/// Issuer Person Id
var cpIssuerPersonId: String?

/// Issuer Type Id
var cpIssuerTypeId: String?

/// Name
var cpName: String?

/// Person Contact Name
var cpPersonContactName: String?

/// Status Active
var cpStatusActive: CShort?

/// Swift Code
var cpSwiftCode: String?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["AbaCode","BinNumber","ContractNumber","CountryId","DocumentIdentification","DocumentsPersonTypeId","EmailPersonContact","FaxNumber","Id","IssuerPersonId","IssuerTypeId","Name","PersonContactName","StatusActive","SwiftCode","WebSite"]
}
}

/**
  Issuer Type.
*/
@objc(AL_IssuerType)
public class AL_IssuerType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Program Type.
*/
@objc(AL_ProgramType)
public class AL_ProgramType : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Responsible Network Reporting.
*/
@objc(AL_ResponsibleNetworkReporting)
public class AL_ResponsibleNetworkReporting : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Source Funds.
*/
@objc(AL_SourceFunds)
public class AL_SourceFunds : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Reason Rejection Request.
*/
@objc(AL_ReasonRejectionRequest)
public class AL_ReasonRejectionRequest : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Cms_request Type.
*/
@objc(AL_Cms_requestType)
public class AL_Cms_requestType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Cms_status Request.
*/
@objc(AL_Cms_statusRequest)
public class AL_Cms_statusRequest : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Cms_user.
*/
@objc(AL_Cms_user)
public class AL_Cms_user : SyedAbsarObjectBase {


/// Authorized Employee Id
var cpAuthorizedEmployeeId: String?

/// Code
var cpCode: String?

/// Comercial Agency Id
var cpComercialAgencyId: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Employee Id
var cpEmployeeId: String?

/// Enabled
var cpEnabled: String?

/// First Names
var cpFirstNames: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Last Names
var cpLastNames: String?

/// Login
var cpLogin: String?

/// Password
var cpPassword: String?

/// Person Id
var cpPersonId: String?

override static func cpKeys() -> Array<String> {
return ["AuthorizedEmployeeId","Code","ComercialAgencyId","DocumentsPersonTypeId","EmployeeId","Enabled","FirstNames","Id","IdentificationNumber","LastNames","Login","Password","PersonId"]
}
}

/**
  Cms_employee.
*/
@objc(AL_Cms_employee)
public class AL_Cms_employee : SyedAbsarObjectBase {


/// Comercial Agency Id
var cpComercialAgencyId: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Employed Position Id
var cpEmployedPositionId: String?

/// First Names
var cpFirstNames: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Last Names
var cpLastNames: String?

/// Person Id
var cpPersonId: String?

override static func cpKeys() -> Array<String> {
return ["ComercialAgencyId","DocumentsPersonTypeId","EmployedPositionId","FirstNames","Id","IdentificationNumber","LastNames","PersonId"]
}
}

/**
  Cms_comercial Agency.
*/
@objc(AL_Cms_comercialAgency)
public class AL_Cms_comercialAgency : SyedAbsarObjectBase {


/// City Id
var cpCityId: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["CityId","Id","Name"]
}
}

/**
  Cms_city.
*/
@objc(AL_Cms_city)
public class AL_Cms_city : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

/// State Id
var cpStateId: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name","StateId"]
}
}

/**
  Cms_state.
*/
@objc(AL_Cms_state)
public class AL_Cms_state : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Country Id
var cpCountryId: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Code","CountryId","Id","Name"]
}
}

/**
  Cms_employed Position.
*/
@objc(AL_Cms_employedPosition)
public class AL_Cms_employedPosition : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Cms_status Applicant.
*/
@objc(AL_Cms_statusApplicant)
public class AL_Cms_statusApplicant : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Card Request Natural Person.
*/
@objc(AL_CardRequestNaturalPerson)
public class AL_CardRequestNaturalPerson : SyedAbsarObjectBase {


/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// First Names
var cpFirstNames: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Last Names
var cpLastNames: String?

/// Legal Customer Id
var cpLegalCustomerId: String?

/// Legal Personid
var cpLegalPersonid: String?

/// Observations
var cpObservations: String?

/// Person Id
var cpPersonId: String?

/// Position Enterprise
var cpPositionEnterprise: String?

/// Proposed Limit
var cpProposedLimit: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

override static func cpKeys() -> Array<String> {
return ["DocumentsPersonTypeId","FirstNames","Id","IdentificationNumber","LastNames","LegalCustomerId","LegalPersonid","Observations","PersonId","PositionEnterprise","ProposedLimit","StatusApplicantId"]
}
}

/**
  Legal Customer.
*/
@objc(AL_LegalCustomer)
public class AL_LegalCustomer : SyedAbsarObjectBase {


/// Create Date
var cpCreateDate: String?

/// Date Inscription Register
var cpDateInscriptionRegister: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Economic Activity Id
var cpEconomicActivityId: String?

/// Enterprise Name
var cpEnterpriseName: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Payed Capital
var cpPayedCapital: String?

/// Person Id
var cpPersonId: String?

/// Register Number
var cpRegisterNumber: String?

/// Status Customer Id
var cpStatusCustomerId: String?

/// Trade Name
var cpTradeName: String?

/// Update Date
var cpUpdateDate: String?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["CreateDate","DateInscriptionRegister","DocumentsPersonTypeId","EconomicActivityId","EnterpriseName","Id","IdentificationNumber","PayedCapital","PersonId","RegisterNumber","StatusCustomerId","TradeName","UpdateDate","WebSite"]
}
}

/**
  Economic Activity.
*/
@objc(AL_EconomicActivity)
public class AL_EconomicActivity : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Country Id
var cpCountryId: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","CountryId","Description","Id"]
}
}

/**
  Status Customer.
*/
@objc(AL_StatusCustomer)
public class AL_StatusCustomer : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Cms_legal Person.
*/
@objc(AL_Cms_legalPerson)
public class AL_Cms_legalPerson : SyedAbsarObjectBase {


/// Code Identification Number
var cpCodeIdentificationNumber: String?

/// Date Inscription Register
var cpDateInscriptionRegister: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Economic Activity Id
var cpEconomicActivityId: String?

/// Enterprise Name
var cpEnterpriseName: String?

/// Enterprise Phone
var cpEnterprisePhone: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Payed Capital
var cpPayedCapital: String?

/// Person Id
var cpPersonId: String?

/// Register Number
var cpRegisterNumber: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

/// Trade Name
var cpTradeName: String?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["CodeIdentificationNumber","DateInscriptionRegister","DocumentsPersonTypeId","EconomicActivityId","EnterpriseName","EnterprisePhone","Id","IdentificationNumber","PayedCapital","PersonId","RegisterNumber","StatusApplicantId","TradeName","WebSite"]
}
}

/**
  Legal Representatives.
*/
@objc(AL_LegalRepresentatives)
public class AL_LegalRepresentatives : SyedAbsarObjectBase {


/// Age
var cpAge: String?

/// Civil Status Id
var cpCivilStatusId: String?

/// Date Birth
var cpDateBirth: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: String?

/// First Names
var cpFirstNames: String?

/// Gender
var cpGender: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Identification Number Old
var cpIdentificationNumberOld: String?

/// Last Names
var cpLastNames: String?

/// Person Id
var cpPersonId: String?

/// Place Birth
var cpPlaceBirth: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

override static func cpKeys() -> Array<String> {
return ["Age","CivilStatusId","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FirstNames","Gender","Id","IdentificationNumber","IdentificationNumberOld","LastNames","PersonId","PlaceBirth","StatusApplicantId"]
}
}

/**
  Natural Customer.
*/
@objc(AL_NaturalCustomer)
public class AL_NaturalCustomer : SyedAbsarObjectBase {


/// Civil Status Id
var cpCivilStatusId: String?

/// Country Stay Time
var cpCountryStayTime: String?

/// Create Date
var cpCreateDate: String?

/// Date Birth
var cpDateBirth: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: String?

/// Family Responsibilities
var cpFamilyResponsibilities: String?

/// First Names
var cpFirstNames: String?

/// Gender
var cpGender: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Identification Number Old
var cpIdentificationNumberOld: String?

/// Ind Foreign
var cpIndForeign: String?

/// Ind Naturalized
var cpIndNaturalized: String?

/// Kin Ship Applicant Id
var cpKinShipApplicantId: String?

/// Last Names
var cpLastNames: String?

/// Married Last Name
var cpMarriedLastName: String?

/// Natural Customer Id
var cpNaturalCustomerId: String?

/// Person Id
var cpPersonId: String?

/// Place Birth
var cpPlaceBirth: String?

/// Profession Id
var cpProfessionId: String?

/// Rif Number
var cpRifNumber: String?

/// Status Customer Id
var cpStatusCustomerId: String?

/// Updatedate
var cpUpdatedate: String?

override static func cpKeys() -> Array<String> {
return ["CivilStatusId","CountryStayTime","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FamilyResponsibilities","FirstNames","Gender","Id","IdentificationNumber","IdentificationNumberOld","IndForeign","IndNaturalized","KinShipApplicantId","LastNames","MarriedLastName","NaturalCustomerId","PersonId","PlaceBirth","ProfessionId","RifNumber","StatusCustomerId","Updatedate"]
}
}

/**
  Cms_natural Person.
*/
@objc(AL_Cms_naturalPerson)
public class AL_Cms_naturalPerson : SyedAbsarObjectBase {


/// Civil Status Id
var cpCivilStatusId: String?

/// Create Date
var cpCreateDate: String?

/// Date Birth
var cpDateBirth: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: String?

/// Family Responsibilities
var cpFamilyResponsibilities: String?

/// First Names
var cpFirstNames: String?

/// Gender
var cpGender: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Identification Number Old
var cpIdentificationNumberOld: String?

/// Last Names
var cpLastNames: String?

/// Married Last Name
var cpMarriedLastName: String?

/// Person Id
var cpPersonId: String?

/// Place Birth
var cpPlaceBirth: String?

/// Profession Id
var cpProfessionId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["CivilStatusId","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FamilyResponsibilities","FirstNames","Gender","Id","IdentificationNumber","IdentificationNumberOld","LastNames","MarriedLastName","PersonId","PlaceBirth","ProfessionId","UpdateDate"]
}
}

/**
  Cms_person Classification.
*/
@objc(AL_Cms_personClassification)
public class AL_Cms_personClassification : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Cms_person Has Address.
*/
@objc(AL_Cms_personHasAddress)
public class AL_Cms_personHasAddress : SyedAbsarObjectBase {


/// Address Id
var cpAddressId: String?

/// Id
var cpId: String?

/// Person Id
var cpPersonId: String?

override static func cpKeys() -> Array<String> {
return ["AddressId","Id","PersonId"]
}
}

/**
  Cms_address.
*/
@objc(AL_Cms_address)
public class AL_Cms_address : SyedAbsarObjectBase {


/// Address Line1
var cpAddressLine1: String?

/// Address Line2
var cpAddressLine2: String?

/// Address Type Id
var cpAddressTypeId: String?

/// City Id
var cpCityId: String?

/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Edification Type Id
var cpEdificationTypeId: String?

/// Floor
var cpFloor: String?

/// Id
var cpId: String?

/// Ind Address Delivery
var cpIndAddressDelivery: String?

/// Name Edification
var cpNameEdification: String?

/// Name Street
var cpNameStreet: String?

/// Number
var cpNumber: String?

/// Street Type Id
var cpStreetTypeId: String?

/// Tower
var cpTower: String?

/// Update Date
var cpUpdateDate: String?

/// Urbanization
var cpUrbanization: String?

/// Zip Zone Code
var cpZipZoneCode: String?

/// Zip Zone Id
var cpZipZoneId: String?

override static func cpKeys() -> Array<String> {
return ["AddressLine1","AddressLine2","AddressTypeId","CityId","CountryId","CreateDate","EdificationTypeId","Floor","Id","IndAddressDelivery","NameEdification","NameStreet","Number","StreetTypeId","Tower","UpdateDate","Urbanization","ZipZoneCode","ZipZoneId"]
}
}

/**
  Cms_address Type.
*/
@objc(AL_Cms_addressType)
public class AL_Cms_addressType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Cms_edification Type.
*/
@objc(AL_Cms_edificationType)
public class AL_Cms_edificationType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Cms_street Type.
*/
@objc(AL_Cms_streetType)
public class AL_Cms_streetType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Zip Zone.
*/
@objc(AL_ZipZone)
public class AL_ZipZone : SyedAbsarObjectBase {


/// City Id
var cpCityId: String?

/// Code
var cpCode: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["CityId","Code","Id","Name"]
}
}

/**
  Cms_phone Person.
*/
@objc(AL_Cms_phonePerson)
public class AL_Cms_phonePerson : SyedAbsarObjectBase {


/// Area Code
var cpAreaCode: String?

/// Country Code
var cpCountryCode: String?

/// Country Id
var cpCountryId: String?

/// Extension Phone Number
var cpExtensionPhoneNumber: String?

/// Id
var cpId: String?

/// Ind Main Phone
var cpIndMainPhone: String?

/// Number Phone
var cpNumberPhone: String?

/// Person Id
var cpPersonId: String?

/// Phone Type Id
var cpPhoneTypeId: String?

override static func cpKeys() -> Array<String> {
return ["AreaCode","CountryCode","CountryId","ExtensionPhoneNumber","Id","IndMainPhone","NumberPhone","PersonId","PhoneTypeId"]
}
}

/**
  Cms_phone Type.
*/
@objc(AL_Cms_phoneType)
public class AL_Cms_phoneType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Plastic Manufacturer.
*/
@objc(AL_PlasticManufacturer)
public class AL_PlasticManufacturer : SyedAbsarObjectBase {


/// Contact Person
var cpContactPerson: String?

/// Contract Number
var cpContractNumber: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Email Contact Person
var cpEmailContactPerson: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Ind Status
var cpIndStatus: String?

/// Name
var cpName: String?

/// Person Id
var cpPersonId: String?

override static func cpKeys() -> Array<String> {
return ["ContactPerson","ContractNumber","DocumentsPersonTypeId","EmailContactPerson","Id","IdentificationNumber","IndStatus","Name","PersonId"]
}
}

/**
  Cms_review O F A C.
*/
@objc(AL_Cms_reviewOFAC)
public class AL_Cms_reviewOFAC : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Person Id
var cpPersonId: String?

/// Request Id
var cpRequestId: String?

/// Result Review
var cpResultReview: String?

override static func cpKeys() -> Array<String> {
return ["Id","PersonId","RequestId","ResultReview"]
}
}

/**
  Cms_product.
*/
@objc(AL_Cms_product)
public class AL_Cms_product : SyedAbsarObjectBase {


/// Activation Date
var cpActivationDate: String?

/// Approval Product Rate
var cpApprovalProductRate: String?

/// Begin Date Validity
var cpBeginDateValidity: String?

/// Bin Number
var cpBinNumber: String?

/// Bin Sponsor Id
var cpBinSponsorId: String?

/// Card Request
var cpCardRequest: String?

/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Days Before Expiration
var cpDaysBeforeExpiration: String?

/// Days To Activate
var cpDaysToActivate: String?

/// Days To Inactivate
var cpDaysToInactivate: String?

/// Days To Use
var cpDaysToUse: String?

/// Days To Withdraw Card
var cpDaysToWithdrawCard: String?

/// Domestic Currency Id
var cpDomesticCurrencyId: String?

/// End Date Validity
var cpEndDateValidity: String?

/// Id
var cpId: String?

/// Ind Activation
var cpIndActivation: String?

/// International Currency Id
var cpInternationalCurrencyId: String?

/// Issuer Id
var cpIssuerId: String?

/// Kind Card Id
var cpKindCardId: String?

/// Level Product Id
var cpLevelProductId: String?

/// Maximum Balance
var cpMaximumBalance: String?

/// Maximun Deactivation Time Blocking
var cpMaximunDeactivationTimeBlocking: String?

/// Minimum Balance
var cpMinimumBalance: String?

/// Name
var cpName: String?

/// Observations
var cpObservations: String?

/// Product Has Channel Has Transaction
var cpProductHasChannelHasTransaction: String?

/// Product Has Commerce Category
var cpProductHasCommerceCategory: String?

/// Product Type Id
var cpProductTypeId: String?

/// Product Use Id
var cpProductUseId: String?

/// Program Id
var cpProgramId: String?

/// Program Loyalty
var cpProgramLoyalty: String?

/// Program Type Id
var cpProgramTypeId: String?

/// Rate By Product
var cpRateByProduct: String?

/// Review Request
var cpReviewRequest: String?

/// Status Product Id
var cpStatusProductId: String?

/// Storage Medioid
var cpStorageMedioid: String?

/// Updatedate
var cpUpdatedate: String?

/// User Activation Id
var cpUserActivationId: String?

/// Validity Months
var cpValidityMonths: String?

/// Segment Marketing Id
var cpSegmentMarketingId: String?

override static func cpKeys() -> Array<String> {
return ["ActivationDate","ApprovalProductRate","BeginDateValidity","BinNumber","BinSponsorId","CardRequest","CountryId","CreateDate","DaysBeforeExpiration","DaysToActivate","DaysToInactivate","DaysToUse","DaysToWithdrawCard","DomesticCurrencyId","EndDateValidity","Id","IndActivation","InternationalCurrencyId","IssuerId","KindCardId","LevelProductId","MaximumBalance","MaximunDeactivationTimeBlocking","MinimumBalance","Name","Observations","ProductHasChannelHasTransaction","ProductHasCommerceCategory","ProductTypeId","ProductUseId","ProgramId","ProgramLoyalty","ProgramTypeId","RateByProduct","ReviewRequest","StatusProductId","StorageMedioid","Updatedate","UserActivationId","ValidityMonths","SegmentMarketingId"]
}
}

/**
  Approval Product Rate.
*/
@objc(AL_ApprovalProductRate)
public class AL_ApprovalProductRate : SyedAbsarObjectBase {


/// Approval Date
var cpApprovalDate: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Ind Approved
var cpIndApproved: String?

/// Product Id
var cpProductId: String?

/// Update Date
var cpUpdateDate: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["ApprovalDate","CreateDate","Id","IndApproved","ProductId","UpdateDate","UserId"]
}
}

/**
  Card Request.
*/
@objc(AL_CardRequest)
public class AL_CardRequest : SyedAbsarObjectBase {


/// Card Status Id
var cpCardStatusId: String?

/// Id
var cpId: String?

/// Product Id
var cpProductId: String?

/// Request Id
var cpRequestId: String?

override static func cpKeys() -> Array<String> {
return ["CardStatusId","Id","ProductId","RequestId"]
}
}

/**
  Kind Card.
*/
@objc(AL_KindCard)
public class AL_KindCard : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Level Product.
*/
@objc(AL_LevelProduct)
public class AL_LevelProduct : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Product Has Channel Has Transaction.
*/
@objc(AL_ProductHasChannelHasTransaction)
public class AL_ProductHasChannelHasTransaction : SyedAbsarObjectBase {


/// Amount Maximum Transaction Domestic
var cpAmountMaximumTransactionDomestic: String?

/// Amount Maximum Transaction International
var cpAmountMaximumTransactionInternational: String?

/// Amount Minimum Transaction Domestic
var cpAmountMinimumTransactionDomestic: String?

/// Amount Minimum Transaction International
var cpAmountMinimumTransactionInternational: String?

/// Channel Id
var cpChannelId: String?

/// Daily Amount Limit Domestic
var cpDailyAmountLimitDomestic: String?

/// Daily Amount Limit International
var cpDailyAmountLimitInternational: String?

/// Id
var cpId: String?

/// Maximum Number Transactions Daily
var cpMaximumNumberTransactionsDaily: String?

/// Maximum Number Transactions Monthly
var cpMaximumNumberTransactionsMonthly: String?

/// Monthly Amount Limit Domestic
var cpMonthlyAmountLimitDomestic: String?

/// Monthly Amount Limit International
var cpMonthlyAmountLimitInternational: String?

/// Product Id
var cpProductId: String?

/// Product Use Id
var cpProductUseId: String?

/// Transaction Id
var cpTransactionId: String?

override static func cpKeys() -> Array<String> {
return ["AmountMaximumTransactionDomestic","AmountMaximumTransactionInternational","AmountMinimumTransactionDomestic","AmountMinimumTransactionInternational","ChannelId","DailyAmountLimitDomestic","DailyAmountLimitInternational","Id","MaximumNumberTransactionsDaily","MaximumNumberTransactionsMonthly","MonthlyAmountLimitDomestic","MonthlyAmountLimitInternational","ProductId","ProductUseId","TransactionId"]
}
}

/**
  Channel.
*/
@objc(AL_Channel)
public class AL_Channel : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","Name"]
}
}

/**
  Product Use.
*/
@objc(AL_ProductUse)
public class AL_ProductUse : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Cms_transaction.
*/
@objc(AL_Cms_transaction)
public class AL_Cms_transaction : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Ind Monetary Type
var cpIndMonetaryType: String?

/// Ind Transaction Purchase
var cpIndTransactionPurchase: String?

/// Ind Variation Rate Channel
var cpIndVariationRateChannel: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id","IndMonetaryType","IndTransactionPurchase","IndVariationRateChannel"]
}
}

/**
  Product Has Commerce Category.
*/
@objc(AL_ProductHasCommerceCategory)
public class AL_ProductHasCommerceCategory : SyedAbsarObjectBase {


/// Commerce Category Id
var cpCommerceCategoryId: String?

/// Id
var cpId: String?

/// Product Id
var cpProductId: String?

override static func cpKeys() -> Array<String> {
return ["CommerceCategoryId","Id","ProductId"]
}
}

/**
  Commerce Category.
*/
@objc(AL_CommerceCategory)
public class AL_CommerceCategory : SyedAbsarObjectBase {


/// Description Economic Activity
var cpDescriptionEconomicActivity: String?

/// Economic Activity
var cpEconomicActivity: String?

/// Id
var cpId: String?

/// Mcc Code
var cpMccCode: String?

/// Segment Commerce Id
var cpSegmentCommerceId: String?

override static func cpKeys() -> Array<String> {
return ["DescriptionEconomicActivity","EconomicActivity","Id","MccCode","SegmentCommerceId"]
}
}

/**
  Segment Commerce.
*/
@objc(AL_SegmentCommerce)
public class AL_SegmentCommerce : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Program Loyalty.
*/
@objc(AL_ProgramLoyalty)
public class AL_ProgramLoyalty : SyedAbsarObjectBase {


/// Activation Date
var cpActivationDate: String?

/// Activation Observations
var cpActivationObservations: String?

/// Conversion Rate Points
var cpConversionRatePoints: String?

/// Create Date
var cpCreateDate: String?

/// Description
var cpDescription: String?

/// End Date
var cpEndDate: String?

/// Id
var cpId: String?

/// Ind Activation
var cpIndActivation: String?

/// Observations
var cpObservations: String?

/// Product Id
var cpProductId: String?

/// Program Id
var cpProgramId: String?

/// Program Loyalty Type Id
var cpProgramLoyaltyTypeId: String?

/// Start Date
var cpStartDate: String?

/// Status Program Loyalty Id
var cpStatusProgramLoyaltyId: String?

/// Update Date
var cpUpdateDate: String?

/// User Activation Id
var cpUserActivationId: String?

override static func cpKeys() -> Array<String> {
return ["ActivationDate","ActivationObservations","ConversionRatePoints","CreateDate","Description","EndDate","Id","IndActivation","Observations","ProductId","ProgramId","ProgramLoyaltyTypeId","StartDate","StatusProgramLoyaltyId","UpdateDate","UserActivationId"]
}
}

/**
  Program Loyalty Type.
*/
@objc(AL_ProgramLoyaltyType)
public class AL_ProgramLoyaltyType : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Status Program Loyalty.
*/
@objc(AL_StatusProgramLoyalty)
public class AL_StatusProgramLoyalty : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Rate By Product.
*/
@objc(AL_RateByProduct)
public class AL_RateByProduct : SyedAbsarObjectBase {


/// Approval Product Rate Id
var cpApprovalProductRateId: String?

/// Channel Id
var cpChannelId: String?

/// Create Date
var cpCreateDate: String?

/// Fixed Rate
var cpFixedRate: String?

/// Fixed Rate P R
var cpFixedRatePR: String?

/// Id
var cpId: String?

/// Ind Card Holder Modification
var cpIndCardHolderModification: String?

/// Percentage Rate
var cpPercentageRate: String?

/// Percentage Rate P R
var cpPercentageRatePR: String?

/// Product Id
var cpProductId: String?

/// Rate Application Type Id
var cpRateApplicationTypeId: String?

/// Total Initial Transactions Exempt
var cpTotalInitialTransactionsExempt: String?

/// Total Initial Transactions Exempt P R
var cpTotalInitialTransactionsExemptPR: String?

/// Total Transactions Exempt Per Month
var cpTotalTransactionsExemptPerMonth: String?

/// Total Transactions Exempt Per Month P R
var cpTotalTransactionsExemptPerMonthPR: String?

/// Transaction Id
var cpTransactionId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["ApprovalProductRateId","ChannelId","CreateDate","FixedRate","FixedRatePR","Id","IndCardHolderModification","PercentageRate","PercentageRatePR","ProductId","RateApplicationTypeId","TotalInitialTransactionsExempt","TotalInitialTransactionsExemptPR","TotalTransactionsExemptPerMonth","TotalTransactionsExemptPerMonthPR","TransactionId","UpdateDate"]
}
}

/**
  Rate Application Type.
*/
@objc(AL_RateApplicationType)
public class AL_RateApplicationType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Review Request.
*/
@objc(AL_ReviewRequest)
public class AL_ReviewRequest : SyedAbsarObjectBase {


/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Ind Approved
var cpIndApproved: String?

/// Maximum Recharge Amount
var cpMaximumRechargeAmount: String?

/// Observations
var cpObservations: String?

/// Product Id
var cpProductId: String?

/// Request Id
var cpRequestId: String?

/// Review Date
var cpReviewDate: String?

/// Review Request Type Id
var cpReviewRequestTypeId: String?

/// Update Date
var cpUpdateDate: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["CreateDate","Id","IndApproved","MaximumRechargeAmount","Observations","ProductId","RequestId","ReviewDate","ReviewRequestTypeId","UpdateDate","UserId"]
}
}

/**
  Review Request Type.
*/
@objc(AL_ReviewRequestType)
public class AL_ReviewRequestType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Status Product.
*/
@objc(AL_StatusProduct)
public class AL_StatusProduct : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Storage Medio.
*/
@objc(AL_StorageMedio)
public class AL_StorageMedio : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Segment Marketing.
*/
@objc(AL_SegmentMarketing)
public class AL_SegmentMarketing : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","Name"]
}
}

/**
  Status Update Reason.
*/
@objc(AL_StatusUpdateReason)
public class AL_StatusUpdateReason : SyedAbsarObjectBase {


/// Create Date
var cpCreateDate: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["CreateDate","Description","Id","UpdateDate"]
}
}

/**
  Validate Recharge Card.
*/
@objc(AL_ValidateRechargeCard)
public class AL_ValidateRechargeCard : SyedAbsarObjectBase {


/// Recharge Amount
var cpRechargeAmount: String?

/// Include Fee
var cpIncludeFee: String?

override static func cpKeys() -> Array<String> {
return ["RechargeAmount","IncludeFee"]
}
}

/**
  Validate Recharge Card Response.
*/
@objc(AL_ValidateRechargeCardResponse)
public class AL_ValidateRechargeCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Recharge Validation Response.
*/
@objc(AL_RechargeValidationResponse)
public class AL_RechargeValidationResponse : SyedAbsarObjectBase {


/// Amount Before Fee
var cpAmountBeforeFee: String?

/// Total Fee
var cpTotalFee: String?

/// Total Amount
var cpTotalAmount: String?

override static func cpKeys() -> Array<String> {
return ["AmountBeforeFee","TotalFee","TotalAmount"]
}
}

/**
  Get Validate Collection.
*/
@objc(AL_GetValidateCollection)
public class AL_GetValidateCollection : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Language
var cpLanguage: String?

override static func cpKeys() -> Array<String> {
return ["UserId","Language"]
}
}

/**
  Get Validate Collection Response.
*/
@objc(AL_GetValidateCollectionResponse)
public class AL_GetValidateCollectionResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Collection List Response.
*/
@objc(AL_CollectionListResponse)
public class AL_CollectionListResponse : SyedAbsarObjectBase {


/// Validation Collections
var cpValidationCollections: String?

override static func cpKeys() -> Array<String> {
return ["ValidationCollections"]
}
}

/**
  Validation Collection.
*/
@objc(AL_ValidationCollection)
public class AL_ValidationCollection : SyedAbsarObjectBase {


/// Additional
var cpAdditional: String?

/// Country Id
var cpCountryId: String?

/// Id
var cpId: String?

/// Language Id
var cpLanguageId: String?

/// Name
var cpName: String?

/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["Additional","CountryId","Id","LanguageId","Name","Status"]
}
}

/**
  Get Product Prepaid Card By User.
*/
@objc(AL_GetProductPrepaidCardByUser)
public class AL_GetProductPrepaidCardByUser : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Product Prepaid Card By User Response.
*/
@objc(AL_GetProductPrepaidCardByUserResponse)
public class AL_GetProductPrepaidCardByUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Product Response.
*/
@objc(AL_ProductResponse)
public class AL_ProductResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

override static func cpKeys() -> Array<String> {
return ["Response"]
}
}

/**
  Retrive Income Plaid.
*/
@objc(AL_RetriveIncomePlaid)
public class AL_RetriveIncomePlaid : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Retrive Income Plaid Response.
*/
@objc(AL_RetriveIncomePlaidResponse)
public class AL_RetriveIncomePlaidResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Income Plaid Responses.
*/
@objc(AL_RetriveIncomePlaidResponses)
public class AL_RetriveIncomePlaidResponses : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

/// Retrive Income Response
var cpRetriveIncomeResponse: String?

override static func cpKeys() -> Array<String> {
return ["Products","RetriveIncomeResponse"]
}
}

/**
  Retrive Income Response.
*/
@objc(AL_RetriveIncomeResponse)
public class AL_RetriveIncomeResponse : SyedAbsarObjectBase {


/// Income
var cpIncome: String?

/// Request_id
var cpRequest_id: String?

override static func cpKeys() -> Array<String> {
return ["Income","Request_id"]
}
}

/**
  Income.
*/
@objc(AL_Income)
public class AL_Income : SyedAbsarObjectBase {


/// Income Streams
var cpIncomeStreams: String?

/// Last_year_income
var cpLast_year_income: String?

/// Last_year_income_before_tax
var cpLast_year_income_before_tax: String?

/// Max_number_of_overlapping_income_streams
var cpMax_number_of_overlapping_income_streams: String?

/// Number_of_income_streams
var cpNumber_of_income_streams: String?

/// Projected_yearly_income
var cpProjected_yearly_income: String?

/// Projected_yearly_income_before_tax
var cpProjected_yearly_income_before_tax: String?

override static func cpKeys() -> Array<String> {
return ["IncomeStreams","Last_year_income","Last_year_income_before_tax","Max_number_of_overlapping_income_streams","Number_of_income_streams","Projected_yearly_income","Projected_yearly_income_before_tax"]
}
}

/**
  Income Stream.
*/
@objc(AL_IncomeStream)
public class AL_IncomeStream : SyedAbsarObjectBase {


/// Confidence
var cpConfidence: String?

/// Days
var cpDays: String?

/// Monthly_income
var cpMonthly_income: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Confidence","Days","Monthly_income","Name"]
}
}

/**
  Check Status Card By Business.
*/
@objc(AL_CheckStatusCardByBusiness)
public class AL_CheckStatusCardByBusiness : SyedAbsarObjectBase {


/// User Email
var cpUserEmail: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["UserEmail","TimeZone"]
}
}

/**
  Check Status Card By Business Response.
*/
@objc(AL_CheckStatusCardByBusinessResponse)
public class AL_CheckStatusCardByBusinessResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Check Status Card Responses.
*/
@objc(AL_CheckStatusCardResponses)
public class AL_CheckStatusCardResponses : SyedAbsarObjectBase {


/// Check Status Credential Card
var cpCheckStatusCredentialCard: String?

override static func cpKeys() -> Array<String> {
return ["CheckStatusCredentialCard"]
}
}

/**
  Check Status Credential Card.
*/
@objc(AL_CheckStatusCredentialCard)
public class AL_CheckStatusCredentialCard : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Ticket
var cpTicket: String?

/// Bigining Atention
var cpBiginingAtention: String?

/// Ending Atention
var cpEndingAtention: String?

/// Timer Atention
var cpTimerAtention: String?

/// Card Number
var cpCardNumber: String?

/// Account Number
var cpAccountNumber: String?

/// Entity Code
var cpEntityCode: String?

/// Entity Description
var cpEntityDescription: String?

/// Branch Office
var cpBranchOffice: String?

/// Product Code
var cpProductCode: String?

/// Product Description
var cpProductDescription: String?

/// State Code
var cpStateCode: String?

/// State Description
var cpStateDescription: String?

/// Current Validity
var cpCurrentValidity: String?

/// Previous Validity
var cpPreviousValidity: String?

/// Denomination Person
var cpDenominationPerson: String?

/// Document Type
var cpDocumentType: String?

/// Document Iden
var cpDocumentIden: String?

/// Phone Number
var cpPhoneNumber: String?

/// Direction
var cpDirection: String?

/// Postal Code
var cpPostalCode: String?

/// Location
var cpLocation: String?

/// Country Code
var cpCountryCode: String?

/// Country Description
var cpCountryDescription: String?

/// Moment Last Update
var cpMomentLastUpdate: String?

/// Last Operation Moment Approved
var cpLastOperationMomentApproved: String?

/// Last Operation Moment Denied
var cpLastOperationMomentDenied: String?

/// Moment Last Low Newsletter
var cpMomentLastLowNewsletter: String?

/// E R R Pin Counter
var cpERRPinCounter: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Ticket","BiginingAtention","EndingAtention","TimerAtention","CardNumber","AccountNumber","EntityCode","EntityDescription","BranchOffice","ProductCode","ProductDescription","StateCode","StateDescription","CurrentValidity","PreviousValidity","DenominationPerson","DocumentType","DocumentIden","PhoneNumber","Direction","PostalCode","Location","CountryCode","CountryDescription","MomentLastUpdate","LastOperationMomentApproved","LastOperationMomentDenied","MomentLastLowNewsletter","ERRPinCounter"]
}
}

/**
  Manual Withdrawals Business.
*/
@objc(AL_ManualWithdrawalsBusiness)
public class AL_ManualWithdrawalsBusiness : SyedAbsarObjectBase {


/// Bank Id
var cpBankId: String?

/// Account Bank Business Id
var cpAccountBankBusinessId: String?

/// Account Bank
var cpAccountBank: String?

/// Amount Withdrawal
var cpAmountWithdrawal: String?

/// Product Id
var cpProductId: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Business Id
var cpBusinessId: String?

/// Business Transaction Id
var cpBusinessTransactionId: String?

override static func cpKeys() -> Array<String> {
return ["BankId","AccountBankBusinessId","AccountBank","AmountWithdrawal","ProductId","ConceptTransaction","BusinessId","BusinessTransactionId"]
}
}

/**
  Manual Withdrawals Business Response.
*/
@objc(AL_ManualWithdrawalsBusinessResponse)
public class AL_ManualWithdrawalsBusinessResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Balance Inquiry With Movements.
*/
@objc(AL_BalanceInquiryWithMovements)
public class AL_BalanceInquiryWithMovements : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["Email"]
}
}

/**
  Balance Inquiry With Movements Response.
*/
@objc(AL_BalanceInquiryWithMovementsResponse)
public class AL_BalanceInquiryWithMovementsResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Balance Inquiry With Movements Responses.
*/
@objc(AL_BalanceInquiryWithMovementsResponses)
public class AL_BalanceInquiryWithMovementsResponses : SyedAbsarObjectBase {


/// Balance Inquiry With Movements Credential
var cpBalanceInquiryWithMovementsCredential: String?

override static func cpKeys() -> Array<String> {
return ["BalanceInquiryWithMovementsCredential"]
}
}

/**
  Balance Inquiry With Movements Credential.
*/
@objc(AL_BalanceInquiryWithMovementsCredential)
public class AL_BalanceInquiryWithMovementsCredential : SyedAbsarObjectBase {


/// Code Error
var cpCodeError: String?

/// Message Error
var cpMessageError: String?

/// Code Answer
var cpCodeAnswer: String?

/// Message Response
var cpMessageResponse: String?

/// Code Authorization
var cpCodeAuthorization: String?

/// Available Consumption
var cpAvailableConsumption: String?

/// Available Quotas
var cpAvailableQuotas: String?

/// Available Advances
var cpAvailableAdvances: String?

/// Available Loans
var cpAvailableLoans: String?

/// Balance
var cpBalance: String?

/// Balance In Dollars
var cpBalanceInDollars: String?

/// Minimum Payment
var cpMinimumPayment: String?

/// Expiration Date Last Settlement
var cpExpirationDateLastSettlement: String?

/// Movements
var cpMovements: String?

override static func cpKeys() -> Array<String> {
return ["CodeError","MessageError","CodeAnswer","MessageResponse","CodeAuthorization","AvailableConsumption","AvailableQuotas","AvailableAdvances","AvailableLoans","Balance","BalanceInDollars","MinimumPayment","ExpirationDateLastSettlement","Movements"]
}
}

/**
  Movimiento.
*/
@objc(AL_Movimiento)
public class AL_Movimiento : SyedAbsarObjectBase {


/// Codigo Autorizacion
var cpCodigoAutorizacion: String?

/// Comercio
var cpComercio: String?

/// Descripcion Importe
var cpDescripcionImporte: String?

/// Fecha
var cpFecha: String?

/// Hora
var cpHora: String?

/// Importe
var cpImporte: String?

override static func cpKeys() -> Array<String> {
return ["CodigoAutorizacion","Comercio","DescripcionImporte","Fecha","Hora","Importe"]
}
}

/**
  Check Status Card.
*/
@objc(AL_CheckStatusCard)
public class AL_CheckStatusCard : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["Email","TimeZone"]
}
}

/**
  Check Status Card Response.
*/
@objc(AL_CheckStatusCardResponse)
public class AL_CheckStatusCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Transaction Plaid.
*/
@objc(AL_RetriveTransactionPlaid)
public class AL_RetriveTransactionPlaid : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Retrive Transaction Plaid Response.
*/
@objc(AL_RetriveTransactionPlaidResponse)
public class AL_RetriveTransactionPlaidResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Transaction Plaid Responses.
*/
@objc(AL_RetriveTransactionPlaidResponses)
public class AL_RetriveTransactionPlaidResponses : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

/// Retrive Transaction Response
var cpRetriveTransactionResponse: String?

override static func cpKeys() -> Array<String> {
return ["Products","RetriveTransactionResponse"]
}
}

/**
  Retrive Transaction Response.
*/
@objc(AL_RetriveTransactionResponse)
public class AL_RetriveTransactionResponse : SyedAbsarObjectBase {


/// Accounts
var cpAccounts: String?

/// Item
var cpItem: String?

/// Request_id
var cpRequest_id: String?

/// Total_transactions
var cpTotal_transactions: String?

/// Transactions
var cpTransactions: String?

override static func cpKeys() -> Array<String> {
return ["Accounts","Item","Request_id","Total_transactions","Transactions"]
}
}

/**
  Accounts.
*/
@objc(AL_Accounts)
public class AL_Accounts : SyedAbsarObjectBase {


/// Account_id
var cpAccount_id: String?

/// Balances
var cpBalances: String?

/// Mask
var cpMask: String?

/// Name
var cpName: String?

/// Official_name
var cpOfficial_name: String?

/// Subtype
var cpSubtype: String?

/// Type
var cpType: String?

override static func cpKeys() -> Array<String> {
return ["Account_id","Balances","Mask","Name","Official_name","Subtype","Type"]
}
}

/**
  Balance.
*/
@objc(AL_Balance)
public class AL_Balance : SyedAbsarObjectBase {


/// Available
var cpAvailable: String?

/// Current
var cpCurrent: String?

/// Iso_currency_code
var cpIso_currency_code: String?

/// Limit
var cpLimit: String?

/// Unofficial_currency_code
var cpUnofficial_currency_code: String?

override static func cpKeys() -> Array<String> {
return ["Available","Current","Iso_currency_code","Limit","Unofficial_currency_code"]
}
}

/**
  Item.
*/
@objc(AL_Item)
public class AL_Item : SyedAbsarObjectBase {


/// Available_products
var cpAvailable_products: String?

/// Billed_products
var cpBilled_products: String?

/// Error
var cpError: String?

/// Institution_id
var cpInstitution_id: String?

/// Item_id
var cpItem_id: String?

/// Webhook
var cpWebhook: String?

override static func cpKeys() -> Array<String> {
return ["Available_products","Billed_products","Error","Institution_id","Item_id","Webhook"]
}
}

/**
  Transactions.
*/
@objc(AL_Transactions)
public class AL_Transactions : SyedAbsarObjectBase {


/// Account_id
var cpAccount_id: String?

/// Account_owner
var cpAccount_owner: String?

/// Amount
var cpAmount: String?

/// Category
var cpCategory: String?

/// Category_id
var cpCategory_id: String?

/// Date
var cpDate: String?

/// Iso_currency_code
var cpIso_currency_code: String?

/// Location
var cpLocation: String?

/// Name
var cpName: String?

/// Payment Meta
var cpPaymentMeta: String?

/// Pending
var cpPending: String?

/// Pending_transaction_id
var cpPending_transaction_id: String?

/// Transaction_id
var cpTransaction_id: String?

/// Transaction_type
var cpTransaction_type: String?

/// Unofficial_currency_code
var cpUnofficial_currency_code: String?

override static func cpKeys() -> Array<String> {
return ["Account_id","Account_owner","Amount","Category","Category_id","Date","Iso_currency_code","Location","Name","PaymentMeta","Pending","Pending_transaction_id","Transaction_id","Transaction_type","Unofficial_currency_code"]
}
}

/**
  Location.
*/
@objc(AL_Location)
public class AL_Location : SyedAbsarObjectBase {


/// Address
var cpAddress: String?

/// City
var cpCity: String?

/// Lat
var cpLat: String?

/// Lon
var cpLon: String?

/// State
var cpState: String?

/// Store_number
var cpStore_number: String?

/// Zip
var cpZip: String?

override static func cpKeys() -> Array<String> {
return ["Address","City","Lat","Lon","State","Store_number","Zip"]
}
}

/**
  Payment Meta.
*/
@objc(AL_PaymentMeta)
public class AL_PaymentMeta : SyedAbsarObjectBase {


/// By_order_of
var cpBy_order_of: String?

/// Payee
var cpPayee: String?

/// Payer
var cpPayer: String?

/// Payment_method
var cpPayment_method: String?

/// Payment_processor
var cpPayment_processor: String?

/// Ppd_id
var cpPpd_id: String?

/// Reason
var cpReason: String?

/// Reference_number
var cpReference_number: String?

override static func cpKeys() -> Array<String> {
return ["By_order_of","Payee","Payer","Payment_method","Payment_processor","Ppd_id","Reason","Reference_number"]
}
}

/**
  Retrive Identity Plaid.
*/
@objc(AL_RetriveIdentityPlaid)
public class AL_RetriveIdentityPlaid : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Retrive Identity Plaid Response.
*/
@objc(AL_RetriveIdentityPlaidResponse)
public class AL_RetriveIdentityPlaidResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Identity Plaid Responses.
*/
@objc(AL_RetriveIdentityPlaidResponses)
public class AL_RetriveIdentityPlaidResponses : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

/// Retrive Identity Response
var cpRetriveIdentityResponse: String?

override static func cpKeys() -> Array<String> {
return ["Products","RetriveIdentityResponse"]
}
}

/**
  Retrive Identity Response.
*/
@objc(AL_RetriveIdentityResponse)
public class AL_RetriveIdentityResponse : SyedAbsarObjectBase {


/// Accounts
var cpAccounts: String?

/// Item
var cpItem: String?

/// Request_id
var cpRequest_id: String?

override static func cpKeys() -> Array<String> {
return ["Accounts","Item","Request_id"]
}
}

/**
  Accounts Identity.
*/
@objc(AL_AccountsIdentity)
public class AL_AccountsIdentity : SyedAbsarObjectBase {


/// Account_id
var cpAccount_id: String?

/// Balances
var cpBalances: String?

/// Mask
var cpMask: String?

/// Name
var cpName: String?

/// Official_name
var cpOfficial_name: String?

/// Owners
var cpOwners: String?

/// Subtype
var cpSubtype: String?

/// Type
var cpType: String?

override static func cpKeys() -> Array<String> {
return ["Account_id","Balances","Mask","Name","Official_name","Owners","Subtype","Type"]
}
}

/**
  Owners.
*/
@objc(AL_Owners)
public class AL_Owners : SyedAbsarObjectBase {


/// Addresses
var cpAddresses: String?

/// Emails
var cpEmails: String?

/// Names
var cpNames: String?

/// Phone_numbers
var cpPhone_numbers: String?

override static func cpKeys() -> Array<String> {
return ["Addresses","Emails","Names","Phone_numbers"]
}
}

/**
  Addresses.
*/
@objc(AL_Addresses)
public class AL_Addresses : SyedAbsarObjectBase {


/// Data
var cpData: String?

/// Primary
var cpPrimary: String?

override static func cpKeys() -> Array<String> {
return ["Data","Primary"]
}
}

/**
  Data.
*/
@objc(AL_Data)
public class AL_Data : SyedAbsarObjectBase {


/// City
var cpCity: String?

/// State
var cpState: String?

/// Street
var cpStreet: String?

/// Zip
var cpZip: String?

override static func cpKeys() -> Array<String> {
return ["City","State","Street","Zip"]
}
}

/**
  Emails.
*/
@objc(AL_Emails)
public class AL_Emails : SyedAbsarObjectBase {


/// Data
var cpData: String?

/// Primary
var cpPrimary: String?

/// Type
var cpType: String?

override static func cpKeys() -> Array<String> {
return ["Data","Primary","Type"]
}
}

/**
  Phone Number.
*/
@objc(AL_PhoneNumber)
public class AL_PhoneNumber : SyedAbsarObjectBase {


/// Data
var cpData: String?

/// Primary
var cpPrimary: String?

/// Type
var cpType: String?

override static func cpKeys() -> Array<String> {
return ["Data","Primary","Type"]
}
}

/**
  Retrive Balance Plaid.
*/
@objc(AL_RetriveBalancePlaid)
public class AL_RetriveBalancePlaid : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Retrive Balance Plaid Response.
*/
@objc(AL_RetriveBalancePlaidResponse)
public class AL_RetriveBalancePlaidResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Balance Plaid Responses.
*/
@objc(AL_RetriveBalancePlaidResponses)
public class AL_RetriveBalancePlaidResponses : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

/// Retrive Balance Response
var cpRetriveBalanceResponse: String?

override static func cpKeys() -> Array<String> {
return ["Products","RetriveBalanceResponse"]
}
}

/**
  Retrive Balance Response.
*/
@objc(AL_RetriveBalanceResponse)
public class AL_RetriveBalanceResponse : SyedAbsarObjectBase {


/// Accounts
var cpAccounts: String?

/// Item
var cpItem: String?

/// Request_id
var cpRequest_id: String?

override static func cpKeys() -> Array<String> {
return ["Accounts","Item","Request_id"]
}
}

/**
  Save Account Bank User.
*/
@objc(AL_SaveAccountBankUser)
public class AL_SaveAccountBankUser : SyedAbsarObjectBase {


/// Bank Id
var cpBankId: String?

/// Unified Registry Id
var cpUnifiedRegistryId: String?

/// Account Number
var cpAccountNumber: String?

/// Account Type Bank Id
var cpAccountTypeBankId: String?

override static func cpKeys() -> Array<String> {
return ["BankId","UnifiedRegistryId","AccountNumber","AccountTypeBankId"]
}
}

/**
  Save Account Bank User Response.
*/
@objc(AL_SaveAccountBankUserResponse)
public class AL_SaveAccountBankUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Account Bank Response.
*/
@objc(AL_AccountBankResponse)
public class AL_AccountBankResponse : SyedAbsarObjectBase {


/// Account Bank
var cpAccountBank: String?

override static func cpKeys() -> Array<String> {
return ["AccountBank"]
}
}

/**
  Account Bank.
*/
@objc(AL_AccountBank)
public class AL_AccountBank : SyedAbsarObjectBase {


/// Account Number
var cpAccountNumber: String?

/// Account Type Bank Id
var cpAccountTypeBankId: String?

/// Bank Id
var cpBankId: String?

/// Business Id
var cpBusinessId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Status Account Bank Id
var cpStatusAccountBankId: String?

/// Unified Registry Id
var cpUnifiedRegistryId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["AccountNumber","AccountTypeBankId","BankId","BusinessId","CreateDate","Id","StatusAccountBankId","UnifiedRegistryId","UpdateDate"]
}
}

/**
  Account Type Bank.
*/
@objc(AL_AccountTypeBank)
public class AL_AccountTypeBank : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Status Account Bank.
*/
@objc(AL_StatusAccountBank)
public class AL_StatusAccountBank : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Get Cards List By User Id.
*/
@objc(AL_GetCardsListByUserId)
public class AL_GetCardsListByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Cards List By User Id Response.
*/
@objc(AL_GetCardsListByUserIdResponse)
public class AL_GetCardsListByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Card List Response.
*/
@objc(AL_CardListResponse)
public class AL_CardListResponse : SyedAbsarObjectBase {


/// Cards
var cpCards: String?

override static func cpKeys() -> Array<String> {
return ["Cards"]
}
}

/**
  Get Status Transaction Aprove.
*/
@objc(AL_GetStatusTransactionAprove)
public class AL_GetStatusTransactionAprove : SyedAbsarObjectBase {


/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["Status"]
}
}

/**
  Get Status Transaction Aprove Response.
*/
@objc(AL_GetStatusTransactionAproveResponse)
public class AL_GetStatusTransactionAproveResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Status Transaction Approve Request.
*/
@objc(AL_StatusTransactionApproveRequest)
public class AL_StatusTransactionApproveRequest : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Get Account Bank By User.
*/
@objc(AL_GetAccountBankByUser)
public class AL_GetAccountBankByUser : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Account Bank By User Response.
*/
@objc(AL_GetAccountBankByUserResponse)
public class AL_GetAccountBankByUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Account Bank List Response.
*/
@objc(AL_AccountBankListResponse)
public class AL_AccountBankListResponse : SyedAbsarObjectBase {


/// Account Banks
var cpAccountBanks: String?

override static func cpKeys() -> Array<String> {
return ["AccountBanks"]
}
}

/**
  Save Affiliation Request User Wallet.
*/
@objc(AL_SaveAffiliationRequestUserWallet)
public class AL_SaveAffiliationRequestUserWallet : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Country Id
var cpCountryId: String?

/// Zip Code
var cpZipCode: String?

/// Address Line1
var cpAddressLine1: String?

/// Address Line2
var cpAddressLine2: String?

/// Img Document Idetification
var cpImgDocumentIdetification: String?

/// Img Profile
var cpImgProfile: String?

override static func cpKeys() -> Array<String> {
return ["UserId","CountryId","ZipCode","AddressLine1","AddressLine2","ImgDocumentIdetification","ImgProfile"]
}
}

/**
  Save Affiliation Request User Wallet Response.
*/
@objc(AL_SaveAffiliationRequestUserWalletResponse)
public class AL_SaveAffiliationRequestUserWalletResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Affiliation Request Response.
*/
@objc(AL_AffiliationRequestResponse)
public class AL_AffiliationRequestResponse : SyedAbsarObjectBase {


/// Affiliation Request
var cpAffiliationRequest: String?

override static func cpKeys() -> Array<String> {
return ["AffiliationRequest"]
}
}

/**
  Affiliation Request.
*/
@objc(AL_AffiliationRequest)
public class AL_AffiliationRequest : SyedAbsarObjectBase {


/// Business Person Id
var cpBusinessPersonId: String?

/// Create Date
var cpCreateDate: String?

/// Date Request
var cpDateRequest: String?

/// Id
var cpId: String?

/// Number Request
var cpNumberRequest: String?

/// Request Has Collection Request
var cpRequestHasCollectionRequest: String?

/// Request Type Id
var cpRequestTypeId: String?

/// Review Affiliation Request
var cpReviewAffiliationRequest: String?

/// Review Ofac
var cpReviewOfac: String?

/// Status Request Id
var cpStatusRequestId: String?

/// Update Date
var cpUpdateDate: String?

/// User Register Unified Id
var cpUserRegisterUnifiedId: String?

override static func cpKeys() -> Array<String> {
return ["BusinessPersonId","CreateDate","DateRequest","Id","NumberRequest","RequestHasCollectionRequest","RequestTypeId","ReviewAffiliationRequest","ReviewOfac","StatusRequestId","UpdateDate","UserRegisterUnifiedId"]
}
}

/**
  Person.
*/
@objc(AL_Person)
public class AL_Person : SyedAbsarObjectBase {


/// Affiliation Request
var cpAffiliationRequest: String?

/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Email
var cpEmail: String?

/// Employee
var cpEmployee: String?

/// Id
var cpId: String?

/// Legal Person
var cpLegalPerson: String?

/// Legal Representative
var cpLegalRepresentative: String?

/// Natural Person
var cpNaturalPerson: String?

/// Person Classification Id
var cpPersonClassificationId: String?

/// Person Has Address
var cpPersonHasAddress: String?

/// Person Type Id
var cpPersonTypeId: String?

/// Phone Person
var cpPhonePerson: String?

/// Review Ofac
var cpReviewOfac: String?

/// Update Date
var cpUpdateDate: String?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["AffiliationRequest","CountryId","CreateDate","Email","Employee","Id","LegalPerson","LegalRepresentative","NaturalPerson","PersonClassificationId","PersonHasAddress","PersonTypeId","PhonePerson","ReviewOfac","UpdateDate","WebSite"]
}
}

/**
  Employe.
*/
@objc(AL_Employe)
public class AL_Employe : SyedAbsarObjectBase {


/// Comercial Agency Id
var cpComercialAgencyId: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Employed Position Id
var cpEmployedPositionId: String?

/// First Names
var cpFirstNames: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Last Names
var cpLastNames: String?

/// Person Id
var cpPersonId: String?

override static func cpKeys() -> Array<String> {
return ["ComercialAgencyId","DocumentsPersonTypeId","EmployedPositionId","FirstNames","Id","IdentificationNumber","LastNames","PersonId"]
}
}

/**
  Maw_comercial_agency.
*/
@objc(AL_Maw_comercial_agency)
public class AL_Maw_comercial_agency : SyedAbsarObjectBase {


/// City Id
var cpCityId: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["CityId","Id","Name"]
}
}

/**
  Employed Position.
*/
@objc(AL_EmployedPosition)
public class AL_EmployedPosition : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Maw_legal_person.
*/
@objc(AL_Maw_legal_person)
public class AL_Maw_legal_person : SyedAbsarObjectBase {


/// Business Category Id
var cpBusinessCategoryId: String?

/// Business Name
var cpBusinessName: String?

/// Create Date
var cpCreateDate: String?

/// Date Inscription Register
var cpDateInscriptionRegister: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Legal Representative Id
var cpLegalRepresentativeId: String?

/// Payed Capital
var cpPayedCapital: String?

/// Person Id
var cpPersonId: String?

/// Register Number
var cpRegisterNumber: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

/// Trade Name
var cpTradeName: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["BusinessCategoryId","BusinessName","CreateDate","DateInscriptionRegister","DocumentsPersonTypeId","Id","IdentificationNumber","LegalRepresentativeId","PayedCapital","PersonId","RegisterNumber","StatusApplicantId","TradeName","UpdateDate"]
}
}

/**
  Business Category.
*/
@objc(AL_BusinessCategory)
public class AL_BusinessCategory : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Mcc Code
var cpMccCode: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","MccCode"]
}
}

/**
  Legal Representative.
*/
@objc(AL_LegalRepresentative)
public class AL_LegalRepresentative : SyedAbsarObjectBase {


/// Age
var cpAge: String?

/// Civil Status Id
var cpCivilStatusId: String?

/// Create Date
var cpCreateDate: String?

/// Date Birth
var cpDateBirth: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: String?

/// First Names
var cpFirstNames: String?

/// Gender
var cpGender: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Identification Number Old
var cpIdentificationNumberOld: String?

/// Last Names
var cpLastNames: String?

/// Person Id
var cpPersonId: String?

/// Place Birth
var cpPlaceBirth: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["Age","CivilStatusId","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FirstNames","Gender","Id","IdentificationNumber","IdentificationNumberOld","LastNames","PersonId","PlaceBirth","StatusApplicantId","UpdateDate"]
}
}

/**
  Maw_civil_status.
*/
@objc(AL_Maw_civil_status)
public class AL_Maw_civil_status : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Language Id
var cpLanguageId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","LanguageId"]
}
}

/**
  Maw_status_applicant.
*/
@objc(AL_Maw_status_applicant)
public class AL_Maw_status_applicant : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Natural Person.
*/
@objc(AL_NaturalPerson)
public class AL_NaturalPerson : SyedAbsarObjectBase {


/// Civil Status Id
var cpCivilStatusId: String?

/// Create Date
var cpCreateDate: String?

/// Date Birth
var cpDateBirth: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: String?

/// First Name
var cpFirstName: String?

/// Gender
var cpGender: String?

/// Id
var cpId: String?

/// Identificaction Number Old
var cpIdentificactionNumberOld: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Last Name
var cpLastName: String?

/// Married Last Name
var cpMarriedLastName: String?

/// Person Id
var cpPersonId: String?

/// Place Birth
var cpPlaceBirth: String?

/// Profession Id
var cpProfessionId: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["CivilStatusId","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FirstName","Gender","Id","IdentificactionNumberOld","IdentificationNumber","LastName","MarriedLastName","PersonId","PlaceBirth","ProfessionId","StatusApplicantId","UpdateDate"]
}
}

/**
  Maw_profession.
*/
@objc(AL_Maw_profession)
public class AL_Maw_profession : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Person Classification.
*/
@objc(AL_PersonClassification)
public class AL_PersonClassification : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Person Has Address.
*/
@objc(AL_PersonHasAddress)
public class AL_PersonHasAddress : SyedAbsarObjectBase {


/// Address Id
var cpAddressId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Person Id
var cpPersonId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["AddressId","CreateDate","Id","PersonId","UpdateDate"]
}
}

/**
  Phone Person.
*/
@objc(AL_PhonePerson)
public class AL_PhonePerson : SyedAbsarObjectBase {


/// Area Code
var cpAreaCode: String?

/// Country Code
var cpCountryCode: String?

/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Extension Phone Number
var cpExtensionPhoneNumber: String?

/// Id
var cpId: String?

/// Ind Main Phone
var cpIndMainPhone: String?

/// Number Phone
var cpNumberPhone: String?

/// Person Id
var cpPersonId: String?

/// Phone Type Id
var cpPhoneTypeId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["AreaCode","CountryCode","CountryId","CreateDate","ExtensionPhoneNumber","Id","IndMainPhone","NumberPhone","PersonId","PhoneTypeId","UpdateDate"]
}
}

/**
  Phone Type.
*/
@objc(AL_PhoneType)
public class AL_PhoneType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Maw_review_ofac.
*/
@objc(AL_Maw_review_ofac)
public class AL_Maw_review_ofac : SyedAbsarObjectBase {


/// Affiliation Request Id
var cpAffiliationRequestId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Observations
var cpObservations: String?

/// Person Id
var cpPersonId: String?

/// Result Review
var cpResultReview: String?

/// Update Date
var cpUpdateDate: String?

/// User Review Id
var cpUserReviewId: String?

override static func cpKeys() -> Array<String> {
return ["AffiliationRequestId","CreateDate","Id","Observations","PersonId","ResultReview","UpdateDate","UserReviewId"]
}
}

/**
  User.
*/
@objc(AL_User)
public class AL_User : SyedAbsarObjectBase {


/// Authorized Employee Id
var cpAuthorizedEmployeeId: String?

/// Creation Date
var cpCreationDate: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Email
var cpEmail: String?

/// Employee Id
var cpEmployeeId: String?

/// Enabled
var cpEnabled: String?

/// First Name
var cpFirstName: String?

/// Id
var cpId: String?

/// Identification Number
var cpIdentificationNumber: String?

/// Last Name
var cpLastName: String?

/// Login
var cpLogin: String?

/// Password
var cpPassword: String?

/// Person Id
var cpPersonId: String?

/// Phone Number
var cpPhoneNumber: String?

/// Receive Top Up Notification
var cpReceiveTopUpNotification: String?

/// User Has Profile
var cpUserHasProfile: String?

override static func cpKeys() -> Array<String> {
return ["AuthorizedEmployeeId","CreationDate","DocumentsPersonTypeId","Email","EmployeeId","Enabled","FirstName","Id","IdentificationNumber","LastName","Login","Password","PersonId","PhoneNumber","ReceiveTopUpNotification","UserHasProfile"]
}
}

/**
  User Has Profile.
*/
@objc(AL_UserHasProfile)
public class AL_UserHasProfile : SyedAbsarObjectBase {


/// Beginning Date
var cpBeginningDate: String?

/// Ending Date
var cpEndingDate: String?

/// Id
var cpId: String?

/// Profile
var cpProfile: String?

/// User
var cpUser: String?

override static func cpKeys() -> Array<String> {
return ["BeginningDate","EndingDate","Id","Profile","User"]
}
}

/**
  Timestamp.
*/
@objc(AL_Timestamp)
public class AL_Timestamp : SyedAbsarObjectBase {


/// Nanos
var cpNanos: String?

override static func cpKeys() -> Array<String> {
return ["Nanos"]
}
}

/**
  Profile.
*/
@objc(AL_Profile)
public class AL_Profile : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

/// Permission Has Profiles
var cpPermissionHasProfiles: String?

/// Profile Data
var cpProfileData: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Name","PermissionHasProfiles","ProfileData"]
}
}

/**
  Permission Has Profile.
*/
@objc(AL_PermissionHasProfile)
public class AL_PermissionHasProfile : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Permission
var cpPermission: String?

/// Profile
var cpProfile: String?

override static func cpKeys() -> Array<String> {
return ["Id","Permission","Profile"]
}
}

/**
  Permission.
*/
@objc(AL_Permission)
public class AL_Permission : SyedAbsarObjectBase {


/// Action
var cpAction: String?

/// Enabled
var cpEnabled: String?

/// Entity
var cpEntity: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

/// Permission Data
var cpPermissionData: String?

/// Permission Group
var cpPermissionGroup: String?

override static func cpKeys() -> Array<String> {
return ["Action","Enabled","Entity","Id","Name","PermissionData","PermissionGroup"]
}
}

/**
  Permission Data.
*/
@objc(AL_PermissionData)
public class AL_PermissionData : SyedAbsarObjectBase {


/// Alias
var cpAlias: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Language
var cpLanguage: String?

/// Permission
var cpPermission: String?

override static func cpKeys() -> Array<String> {
return ["Alias","Description","Id","Language","Permission"]
}
}

/**
  Permission Group.
*/
@objc(AL_PermissionGroup)
public class AL_PermissionGroup : SyedAbsarObjectBase {


/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

/// Permission Group Data
var cpPermissionGroupData: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Name","PermissionGroupData"]
}
}

/**
  Permission Group Data.
*/
@objc(AL_PermissionGroupData)
public class AL_PermissionGroupData : SyedAbsarObjectBase {


/// Alias
var cpAlias: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Language
var cpLanguage: String?

/// Permission Group
var cpPermissionGroup: String?

override static func cpKeys() -> Array<String> {
return ["Alias","Description","Id","Language","PermissionGroup"]
}
}

/**
  Profile Data.
*/
@objc(AL_ProfileData)
public class AL_ProfileData : SyedAbsarObjectBase {


/// Alias
var cpAlias: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Language
var cpLanguage: String?

/// Profile
var cpProfile: String?

override static func cpKeys() -> Array<String> {
return ["Alias","Description","Id","Language","Profile"]
}
}

/**
  Request Has Collection Request.
*/
@objc(AL_RequestHasCollectionRequest)
public class AL_RequestHasCollectionRequest : SyedAbsarObjectBase {


/// Affiliation Request Id
var cpAffiliationRequestId: String?

/// Collections Request Id
var cpCollectionsRequestId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Image File Url
var cpImageFileUrl: String?

/// Ind Approved
var cpIndApproved: String?

/// Observations
var cpObservations: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["AffiliationRequestId","CollectionsRequestId","CreateDate","Id","ImageFileUrl","IndApproved","Observations","UpdateDate"]
}
}

/**
  Collections Request.
*/
@objc(AL_CollectionsRequest)
public class AL_CollectionsRequest : SyedAbsarObjectBase {


/// Collection Type Id
var cpCollectionTypeId: String?

/// Enabled
var cpEnabled: String?

/// Id
var cpId: String?

/// Person Type Id
var cpPersonTypeId: String?

/// Request Type Id
var cpRequestTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CollectionTypeId","Enabled","Id","PersonTypeId","RequestTypeId"]
}
}

/**
  Collection Type.
*/
@objc(AL_CollectionType)
public class AL_CollectionType : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Orden
var cpOrden: String?

/// Person Type Id
var cpPersonTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","Description","Id","Orden","PersonTypeId"]
}
}

/**
  Request Type.
*/
@objc(AL_RequestType)
public class AL_RequestType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Create Date
var cpCreateDate: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["Code","CreateDate","Description","Id","UpdateDate"]
}
}

/**
  Review Affiliation Request.
*/
@objc(AL_ReviewAffiliationRequest)
public class AL_ReviewAffiliationRequest : SyedAbsarObjectBase {


/// Affiliation Request Id
var cpAffiliationRequestId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Ind Approved
var cpIndApproved: String?

/// Observations
var cpObservations: String?

/// Review Date
var cpReviewDate: String?

/// Review Type Id
var cpReviewTypeId: String?

/// Update Date
var cpUpdateDate: String?

/// User Review Id
var cpUserReviewId: String?

override static func cpKeys() -> Array<String> {
return ["AffiliationRequestId","CreateDate","Id","IndApproved","Observations","ReviewDate","ReviewTypeId","UpdateDate","UserReviewId"]
}
}

/**
  Review Type.
*/
@objc(AL_ReviewType)
public class AL_ReviewType : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Get Status Affiliation Request By Email.
*/
@objc(AL_GetStatusAffiliationRequestByEmail)
public class AL_GetStatusAffiliationRequestByEmail : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["Email"]
}
}

/**
  Get Status Affiliation Request By Email Response.
*/
@objc(AL_GetStatusAffiliationRequestByEmailResponse)
public class AL_GetStatusAffiliationRequestByEmailResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save User Has Product.
*/
@objc(AL_SaveUserHasProduct)
public class AL_SaveUserHasProduct : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Product Id
var cpProductId: String?

override static func cpKeys() -> Array<String> {
return ["UserId","ProductId"]
}
}

/**
  Save User Has Product Response.
*/
@objc(AL_SaveUserHasProductResponse)
public class AL_SaveUserHasProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  User Has Product Response.
*/
@objc(AL_UserHasProductResponse)
public class AL_UserHasProductResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

override static func cpKeys() -> Array<String> {
return ["Response"]
}
}

/**
  Get Credit Card Type.
*/
@objc(AL_GetCreditCardType)
public class AL_GetCreditCardType : SyedAbsarObjectBase {


/// User Api
var cpUserApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UserApi","PasswordApi"]
}
}

/**
  Get Credit Card Type Response.
*/
@objc(AL_GetCreditCardTypeResponse)
public class AL_GetCreditCardTypeResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Credit Card List Response.
*/
@objc(AL_CreditCardListResponse)
public class AL_CreditCardListResponse : SyedAbsarObjectBase {


/// Creditcard Types
var cpCreditcardTypes: String?

override static func cpKeys() -> Array<String> {
return ["CreditcardTypes"]
}
}

/**
  Get Products Use Prepaid Card By User Id.
*/
@objc(AL_GetProductsUsePrepaidCardByUserId)
public class AL_GetProductsUsePrepaidCardByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Products Use Prepaid Card By User Id Response.
*/
@objc(AL_GetProductsUsePrepaidCardByUserIdResponse)
public class AL_GetProductsUsePrepaidCardByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Account Bank.
*/
@objc(AL_SaveAccountBank)
public class AL_SaveAccountBank : SyedAbsarObjectBase {


/// Unified Registry Id
var cpUnifiedRegistryId: String?

/// Account Number
var cpAccountNumber: String?

/// Bank Id
var cpBankId: String?

/// Account Type Bank Id
var cpAccountTypeBankId: String?

override static func cpKeys() -> Array<String> {
return ["UnifiedRegistryId","AccountNumber","BankId","AccountTypeBankId"]
}
}

/**
  Save Account Bank Response.
*/
@objc(AL_SaveAccountBankResponse)
public class AL_SaveAccountBankResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Check Status Account.
*/
@objc(AL_CheckStatusAccount)
public class AL_CheckStatusAccount : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["UserId","Card","TimeZone"]
}
}

/**
  Check Status Account Response.
*/
@objc(AL_CheckStatusAccountResponse)
public class AL_CheckStatusAccountResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Check Status Account Responses.
*/
@objc(AL_CheckStatusAccountResponses)
public class AL_CheckStatusAccountResponses : SyedAbsarObjectBase {


/// Check Status Credential Account
var cpCheckStatusCredentialAccount: String?

override static func cpKeys() -> Array<String> {
return ["CheckStatusCredentialAccount"]
}
}

/**
  Check Status Credential Account.
*/
@objc(AL_CheckStatusCredentialAccount)
public class AL_CheckStatusCredentialAccount : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Account Number
var cpAccountNumber: String?

/// State Code
var cpStateCode: String?

/// State Description
var cpStateDescription: String?

/// Entity Code
var cpEntityCode: String?

/// Entity Description
var cpEntityDescription: String?

/// Branch Office
var cpBranchOffice: String?

/// Product Code
var cpProductCode: String?

/// Product Description
var cpProductDescription: String?

/// Country Code
var cpCountryCode: String?

/// Country Description
var cpCountryDescription: String?

/// Currency Code
var cpCurrencyCode: String?

/// Currency Description
var cpCurrencyDescription: String?

/// Indicators V I P
var cpIndicatorsVIP: String?

/// Indicators H C C
var cpIndicatorsHCC: String?

/// Indicators U L C
var cpIndicatorsULC: String?

/// Indicators M C C
var cpIndicatorsMCC: String?

/// Renewal Moment
var cpRenewalMoment: String?

/// Moment Last Update
var cpMomentLastUpdate: String?

/// Last Operation Moment Approved
var cpLastOperationMomentApproved: String?

/// Last Operation Moment Denied
var cpLastOperationMomentDenied: String?

/// Last Block Moment
var cpLastBlockMoment: String?

/// Last Unlock Moment
var cpLastUnlockMoment: String?

/// Available Purchases
var cpAvailablePurchases: String?

/// Available Fees
var cpAvailableFees: String?

/// Advancements Available
var cpAdvancementsAvailable: String?

/// Loans Available
var cpLoansAvailable: String?

/// Shopping Limits
var cpShoppingLimits: String?

/// Limited Fees
var cpLimitedFees: String?

/// Advancements Limit
var cpAdvancementsLimit: String?

/// Loans Limit
var cpLoansLimit: String?

/// Expiration Date
var cpExpirationDate: String?

/// Balance
var cpBalance: String?

/// Minimum Payment
var cpMinimumPayment: String?

/// Dollar Balance
var cpDollarBalance: String?

override static func cpKeys() -> Array<String> {
return ["Code","Description","AccountNumber","StateCode","StateDescription","EntityCode","EntityDescription","BranchOffice","ProductCode","ProductDescription","CountryCode","CountryDescription","CurrencyCode","CurrencyDescription","IndicatorsVIP","IndicatorsHCC","IndicatorsULC","IndicatorsMCC","RenewalMoment","MomentLastUpdate","LastOperationMomentApproved","LastOperationMomentDenied","LastBlockMoment","LastUnlockMoment","AvailablePurchases","AvailableFees","AdvancementsAvailable","LoansAvailable","ShoppingLimits","LimitedFees","AdvancementsLimit","LoansLimit","ExpirationDate","Balance","MinimumPayment","DollarBalance"]
}
}

/**
  Get Person By Email.
*/
@objc(AL_GetPersonByEmail)
public class AL_GetPersonByEmail : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["Email"]
}
}

/**
  Get Person By Email Response.
*/
@objc(AL_GetPersonByEmailResponse)
public class AL_GetPersonByEmailResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Person Response.
*/
@objc(AL_PersonResponse)
public class AL_PersonResponse : SyedAbsarObjectBase {


/// Person
var cpPerson: String?

override static func cpKeys() -> Array<String> {
return ["Person"]
}
}

/**
  Person Generic.
*/
@objc(AL_PersonGeneric)
public class AL_PersonGeneric : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: String?

/// Email
var cpEmail: String?

/// Id
var cpId: String?

/// Person Type Id
var cpPersonTypeId: String?

/// Update Date
var cpUpdateDate: String?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","CreateDate","Email","Id","PersonTypeId","UpdateDate","WebSite"]
}
}

/**
  Get Products Remettence By User Id.
*/
@objc(AL_GetProductsRemettenceByUserId)
public class AL_GetProductsRemettenceByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Products Remettence By User Id Response.
*/
@objc(AL_GetProductsRemettenceByUserIdResponse)
public class AL_GetProductsRemettenceByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Recharge Afinitas.
*/
@objc(AL_SaveRechargeAfinitas)
public class AL_SaveRechargeAfinitas : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Amount Recharge
var cpAmountRecharge: String?

/// Currency
var cpCurrency: String?

/// Card Number
var cpCardNumber: String?

/// Expiration Year
var cpExpirationYear: String?

/// Expiration Month
var cpExpirationMonth: String?

/// Cvv
var cpCvv: String?

/// Card Holder Name
var cpCardHolderName: String?

/// Payment Info Id
var cpPaymentInfoId: String?

override static func cpKeys() -> Array<String> {
return ["UserId","AmountRecharge","Currency","CardNumber","ExpirationYear","ExpirationMonth","Cvv","CardHolderName","PaymentInfoId"]
}
}

/**
  Save Recharge Afinitas Response.
*/
@objc(AL_SaveRechargeAfinitasResponse)
public class AL_SaveRechargeAfinitasResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Recharge Afinitas Responses.
*/
@objc(AL_RechargeAfinitasResponses)
public class AL_RechargeAfinitasResponses : SyedAbsarObjectBase {


/// Recharge Afinitas
var cpRechargeAfinitas: String?

/// Products
var cpProducts: String?

/// Charge Response
var cpChargeResponse: String?

override static func cpKeys() -> Array<String> {
return ["RechargeAfinitas","Products","ChargeResponse"]
}
}

/**
  Recharge Afinitas.
*/
@objc(AL_RechargeAfinitas)
public class AL_RechargeAfinitas : SyedAbsarObjectBase {


/// Status
var cpStatus: String?

/// Request Id
var cpRequestId: String?

/// Date
var cpDate: String?

/// Time
var cpTime: String?

/// Error
var cpError: String?

override static func cpKeys() -> Array<String> {
return ["Status","RequestId","Date","Time","Error"]
}
}

/**
  Error Afinitas.
*/
@objc(AL_ErrorAfinitas)
public class AL_ErrorAfinitas : SyedAbsarObjectBase {


/// Bin Information
var cpBinInformation: String?

/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Http Status Code
var cpHttpStatusCode: String?

override static func cpKeys() -> Array<String> {
return ["BinInformation","Code","Description","HttpStatusCode"]
}
}

/**
  Bin Information Afinitas.
*/
@objc(AL_BinInformationAfinitas)
public class AL_BinInformationAfinitas : SyedAbsarObjectBase {


/// Bank
var cpBank: String?

/// Bin
var cpBin: String?

/// Brand
var cpBrand: String?

/// Product
var cpProduct: String?

/// Type
var cpType: String?

override static func cpKeys() -> Array<String> {
return ["Bank","Bin","Brand","Product","Type"]
}
}

/**
  Charge Response.
*/
@objc(AL_ChargeResponse)
public class AL_ChargeResponse : SyedAbsarObjectBase {


/// Date
var cpDate: String?

/// Error
var cpError: String?

/// Request Id
var cpRequestId: String?

/// Status
var cpStatus: String?

/// Time
var cpTime: String?

override static func cpKeys() -> Array<String> {
return ["Date","Error","RequestId","Status","Time"]
}
}

/**
  Error.
*/
@objc(AL_Error)
public class AL_Error : SyedAbsarObjectBase {


/// Bin Information
var cpBinInformation: String?

/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Http Status Code
var cpHttpStatusCode: String?

override static func cpKeys() -> Array<String> {
return ["BinInformation","Code","Description","HttpStatusCode"]
}
}

/**
  Bin Information.
*/
@objc(AL_BinInformation)
public class AL_BinInformation : SyedAbsarObjectBase {


/// Bank
var cpBank: String?

/// Bin
var cpBin: String?

/// Brand
var cpBrand: String?

/// Product
var cpProduct: String?

/// Type
var cpType: String?

override static func cpKeys() -> Array<String> {
return ["Bank","Bin","Brand","Product","Type"]
}
}

/**
  Get Country Code.
*/
@objc(AL_GetCountryCode)
public class AL_GetCountryCode : SyedAbsarObjectBase {


/// Str Ani
var cpStrAni: String?

override static func cpKeys() -> Array<String> {
return ["StrAni"]
}
}

/**
  Get Country Code Response.
*/
@objc(AL_GetCountryCodeResponse)
public class AL_GetCountryCodeResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Limit Advance.
*/
@objc(AL_LimitAdvance)
public class AL_LimitAdvance : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

/// Amount Withdrawal
var cpAmountWithdrawal: String?

/// Product Id
var cpProductId: String?

override static func cpKeys() -> Array<String> {
return ["Email","AmountWithdrawal","ProductId"]
}
}

/**
  Limit Advance Response.
*/
@objc(AL_LimitAdvanceResponse)
public class AL_LimitAdvanceResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Limit Advance Responses.
*/
@objc(AL_LimitAdvanceResponses)
public class AL_LimitAdvanceResponses : SyedAbsarObjectBase {


/// Limit Advance Credential
var cpLimitAdvanceCredential: String?

/// Products
var cpProducts: String?

override static func cpKeys() -> Array<String> {
return ["LimitAdvanceCredential","Products"]
}
}

/**
  Limit Advance Credential.
*/
@objc(AL_LimitAdvanceCredential)
public class AL_LimitAdvanceCredential : SyedAbsarObjectBase {


/// Code Error
var cpCodeError: String?

/// Message Error
var cpMessageError: String?

/// Code Answer
var cpCodeAnswer: String?

/// Message Response
var cpMessageResponse: String?

/// Code Authorization
var cpCodeAuthorization: String?

override static func cpKeys() -> Array<String> {
return ["CodeError","MessageError","CodeAnswer","MessageResponse","CodeAuthorization"]
}
}

/**
  Send Sms Simbox.
*/
@objc(AL_SendSmsSimbox)
public class AL_SendSmsSimbox : SyedAbsarObjectBase {


/// Phone Number
var cpPhoneNumber: String?

/// Text
var cpText: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["PhoneNumber","Text","UserId"]
}
}

/**
  Send Sms Simbox Response.
*/
@objc(AL_SendSmsSimboxResponse)
public class AL_SendSmsSimboxResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Products Is Exchange Product User Id.
*/
@objc(AL_GetProductsIsExchangeProductUserId)
public class AL_GetProductsIsExchangeProductUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Products Is Exchange Product User Id Response.
*/
@objc(AL_GetProductsIsExchangeProductUserIdResponse)
public class AL_GetProductsIsExchangeProductUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Cumplimient.
*/
@objc(AL_SaveCumplimient)
public class AL_SaveCumplimient : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Img Document
var cpImgDocument: String?

/// Img Profile
var cpImgProfile: String?

/// Estado
var cpEstado: String?

/// Ciudad
var cpCiudad: String?

/// Zip Code
var cpZipCode: String?

/// Addres1
var cpAddres1: String?

override static func cpKeys() -> Array<String> {
return ["UserId","ImgDocument","ImgProfile","Estado","Ciudad","ZipCode","Addres1"]
}
}

/**
  Save Cumplimient Response.
*/
@objc(AL_SaveCumplimientResponse)
public class AL_SaveCumplimientResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Card By Identification Number.
*/
@objc(AL_GetCardByIdentificationNumber)
public class AL_GetCardByIdentificationNumber : SyedAbsarObjectBase {


/// Number Identification
var cpNumberIdentification: String?

override static func cpKeys() -> Array<String> {
return ["NumberIdentification"]
}
}

/**
  Get Card By Identification Number Response.
*/
@objc(AL_GetCardByIdentificationNumberResponse)
public class AL_GetCardByIdentificationNumberResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Dispertion Transfer.
*/
@objc(AL_DispertionTransfer)
public class AL_DispertionTransfer : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

/// Amount Recharge
var cpAmountRecharge: String?

/// Product Id
var cpProductId: String?

override static func cpKeys() -> Array<String> {
return ["Email","AmountRecharge","ProductId"]
}
}

/**
  Dispertion Transfer Response.
*/
@objc(AL_DispertionTransferResponse)
public class AL_DispertionTransferResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Dispertion Transfer Responses.
*/
@objc(AL_DispertionTransferResponses)
public class AL_DispertionTransferResponses : SyedAbsarObjectBase {


/// Dispertion Transfer Credential
var cpDispertionTransferCredential: String?

/// Products
var cpProducts: String?

override static func cpKeys() -> Array<String> {
return ["DispertionTransferCredential","Products"]
}
}

/**
  Dispertion Transfer Credential.
*/
@objc(AL_DispertionTransferCredential)
public class AL_DispertionTransferCredential : SyedAbsarObjectBase {


/// Code Error
var cpCodeError: String?

/// Message Error
var cpMessageError: String?

/// Code Answer
var cpCodeAnswer: String?

/// Message Response
var cpMessageResponse: String?

/// Code Authorization
var cpCodeAuthorization: String?

override static func cpKeys() -> Array<String> {
return ["CodeError","MessageError","CodeAnswer","MessageResponse","CodeAuthorization"]
}
}

/**
  Get Bank By User.
*/
@objc(AL_GetBankByUser)
public class AL_GetBankByUser : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Bank By User Response.
*/
@objc(AL_GetBankByUserResponse)
public class AL_GetBankByUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Validate Business Manual Withdrawal.
*/
@objc(AL_ValidateBusinessManualWithdrawal)
public class AL_ValidateBusinessManualWithdrawal : SyedAbsarObjectBase {


/// Withdrawal Amount
var cpWithdrawalAmount: String?

/// Product Id
var cpProductId: String?

/// Include Fee
var cpIncludeFee: String?

override static func cpKeys() -> Array<String> {
return ["WithdrawalAmount","ProductId","IncludeFee"]
}
}

/**
  Validate Business Manual Withdrawal Response.
*/
@objc(AL_ValidateBusinessManualWithdrawalResponse)
public class AL_ValidateBusinessManualWithdrawalResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Transaction Validation Response.
*/
@objc(AL_TransactionValidationResponse)
public class AL_TransactionValidationResponse : SyedAbsarObjectBase {


/// Amount Before Fee
var cpAmountBeforeFee: String?

/// Fee
var cpFee: String?

/// Amount After Fee
var cpAmountAfterFee: String?

override static func cpKeys() -> Array<String> {
return ["AmountBeforeFee","Fee","AmountAfterFee"]
}
}

/**
  Get Products Pay Top Up By User Id.
*/
@objc(AL_GetProductsPayTopUpByUserId)
public class AL_GetProductsPayTopUpByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Products Pay Top Up By User Id Response.
*/
@objc(AL_GetProductsPayTopUpByUserIdResponse)
public class AL_GetProductsPayTopUpByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Transfer Between Business Account.
*/
@objc(AL_SaveTransferBetweenBusinessAccount)
public class AL_SaveTransferBetweenBusinessAccount : SyedAbsarObjectBase {


/// Product Id
var cpProductId: String?

/// Amount Transfer
var cpAmountTransfer: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Business Id
var cpBusinessId: String?

/// Business Destination Id
var cpBusinessDestinationId: String?

override static func cpKeys() -> Array<String> {
return ["ProductId","AmountTransfer","ConceptTransaction","BusinessId","BusinessDestinationId"]
}
}

/**
  Save Transfer Between Business Account Response.
*/
@objc(AL_SaveTransferBetweenBusinessAccountResponse)
public class AL_SaveTransferBetweenBusinessAccountResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Transaction Approve Request.
*/
@objc(AL_SaveTransactionApproveRequest)
public class AL_SaveTransactionApproveRequest : SyedAbsarObjectBase {


/// Unified Registry Id
var cpUnifiedRegistryId: String?

/// Product Id
var cpProductId: String?

/// Transaction Id
var cpTransactionId: String?

/// Bank Operation Id
var cpBankOperationId: String?

/// Document Type Id
var cpDocumentTypeId: String?

/// Origin Application Id
var cpOriginApplicationId: String?

override static func cpKeys() -> Array<String> {
return ["UnifiedRegistryId","ProductId","TransactionId","BankOperationId","DocumentTypeId","OriginApplicationId"]
}
}

/**
  Save Transaction Approve Request Response.
*/
@objc(AL_SaveTransactionApproveRequestResponse)
public class AL_SaveTransactionApproveRequestResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Transaction Approve Request Response.
*/
@objc(AL_TransactionApproveRequestResponse)
public class AL_TransactionApproveRequestResponse : SyedAbsarObjectBase {


/// Transaction Approve Request
var cpTransactionApproveRequest: String?

override static func cpKeys() -> Array<String> {
return ["TransactionApproveRequest"]
}
}

/**
  Transaction Approve Request.
*/
@objc(AL_TransactionApproveRequest)
public class AL_TransactionApproveRequest : SyedAbsarObjectBase {


/// Approved Request Date
var cpApprovedRequestDate: String?

/// Bank Operation Id
var cpBankOperationId: String?

/// Business Id
var cpBusinessId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Ind Approve Request
var cpIndApproveRequest: String?

/// Observations
var cpObservations: String?

/// Product Id
var cpProductId: String?

/// Request Date
var cpRequestDate: String?

/// Request Number
var cpRequestNumber: String?

/// Status Transaction Approve Request Id
var cpStatusTransactionApproveRequestId: String?

/// Transaction Id
var cpTransactionId: String?

/// Unified Registry User Id
var cpUnifiedRegistryUserId: String?

/// Update Date
var cpUpdateDate: String?

/// User Approved Request Id
var cpUserApprovedRequestId: String?

override static func cpKeys() -> Array<String> {
return ["ApprovedRequestDate","BankOperationId","BusinessId","CreateDate","Id","IndApproveRequest","Observations","ProductId","RequestDate","RequestNumber","StatusTransactionApproveRequestId","TransactionId","UnifiedRegistryUserId","UpdateDate","UserApprovedRequestId"]
}
}

/**
  Bank Operation.
*/
@objc(AL_BankOperation)
public class AL_BankOperation : SyedAbsarObjectBase {


/// Account Bank Business Id
var cpAccountBankBusinessId: String?

/// Account Bank Id
var cpAccountBankId: String?

/// Bank Id
var cpBankId: String?

/// Bank Operation Amount
var cpBankOperationAmount: String?

/// Bank Operation Date
var cpBankOperationDate: String?

/// Bank Operation Mode Id
var cpBankOperationModeId: String?

/// Bank Operation Number
var cpBankOperationNumber: String?

/// Bank Operation Type Id
var cpBankOperationTypeId: String?

/// Business Id
var cpBusinessId: String?

/// Commision Id
var cpCommisionId: String?

/// Create Date
var cpCreateDate: String?

/// Id
var cpId: String?

/// Observations
var cpObservations: String?

/// Payment Type Id
var cpPaymentTypeId: String?

/// Product Id
var cpProductId: String?

/// Responsible
var cpResponsible: String?

/// Status Bank Operation Id
var cpStatusBankOperationId: String?

/// Transaction Id
var cpTransactionId: String?

/// Update Date
var cpUpdateDate: String?

/// User Source Id
var cpUserSourceId: String?

override static func cpKeys() -> Array<String> {
return ["AccountBankBusinessId","AccountBankId","BankId","BankOperationAmount","BankOperationDate","BankOperationModeId","BankOperationNumber","BankOperationTypeId","BusinessId","CommisionId","CreateDate","Id","Observations","PaymentTypeId","ProductId","Responsible","StatusBankOperationId","TransactionId","UpdateDate","UserSourceId"]
}
}

/**
  Bank Operation Mode.
*/
@objc(AL_BankOperationMode)
public class AL_BankOperationMode : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Bank Operation Type.
*/
@objc(AL_BankOperationType)
public class AL_BankOperationType : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Commission.
*/
@objc(AL_Commission)
public class AL_Commission : SyedAbsarObjectBase {


/// Beginning Date
var cpBeginningDate: String?

/// Ending Date
var cpEndingDate: String?

/// Id
var cpId: String?

/// Ind Application Commission
var cpIndApplicationCommission: String?

/// Is Percent Commision
var cpIsPercentCommision: CShort?

/// Product Id
var cpProductId: String?

/// Transaction Type Id
var cpTransactionTypeId: String?

/// Value
var cpValue: String?

override static func cpKeys() -> Array<String> {
return ["BeginningDate","EndingDate","Id","IndApplicationCommission","IsPercentCommision","ProductId","TransactionTypeId","Value"]
}
}

/**
  Maw_status_bank_operation.
*/
@objc(AL_Maw_status_bank_operation)
public class AL_Maw_status_bank_operation : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Create Date
var cpCreateDate: String?

/// Description
var cpDescription: String?

/// Id
var cpId: String?

/// Update Date
var cpUpdateDate: String?

override static func cpKeys() -> Array<String> {
return ["Code","CreateDate","Description","Id","UpdateDate"]
}
}

/**
  Get Transactions By Business Id.
*/
@objc(AL_GetTransactionsByBusinessId)
public class AL_GetTransactionsByBusinessId : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// Max Result
var cpMaxResult: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","MaxResult"]
}
}

/**
  Get Transactions By Business Id Response.
*/
@objc(AL_GetTransactionsByBusinessIdResponse)
public class AL_GetTransactionsByBusinessIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Products By Business Id.
*/
@objc(AL_GetProductsByBusinessId)
public class AL_GetProductsByBusinessId : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId"]
}
}

/**
  Get Products By Business Id Response.
*/
@objc(AL_GetProductsByBusinessIdResponse)
public class AL_GetProductsByBusinessIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Validate Business Transfer To User.
*/
@objc(AL_ValidateBusinessTransferToUser)
public class AL_ValidateBusinessTransferToUser : SyedAbsarObjectBase {


/// Withdrawal Amount
var cpWithdrawalAmount: String?

/// Product Id
var cpProductId: String?

/// Include Fee
var cpIncludeFee: String?

override static func cpKeys() -> Array<String> {
return ["WithdrawalAmount","ProductId","IncludeFee"]
}
}

/**
  Validate Business Transfer To User Response.
*/
@objc(AL_ValidateBusinessTransferToUserResponse)
public class AL_ValidateBusinessTransferToUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Send S M S.
*/
@objc(AL_SendSMS)
public class AL_SendSMS : SyedAbsarObjectBase {


/// Movil
var cpMovil: String?

/// Message
var cpMessage: String?

override static func cpKeys() -> Array<String> {
return ["Movil","Message"]
}
}

/**
  Send S M S Response.
*/
@objc(AL_SendSMSResponse)
public class AL_SendSMSResponse : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Business Info By Cryptogram.
*/
@objc(AL_GetBusinessInfoByCryptogram)
public class AL_GetBusinessInfoByCryptogram : SyedAbsarObjectBase {


/// Cryptogram
var cpCryptogram: String?

override static func cpKeys() -> Array<String> {
return ["Cryptogram"]
}
}

/**
  Get Business Info By Cryptogram Response.
*/
@objc(AL_GetBusinessInfoByCryptogramResponse)
public class AL_GetBusinessInfoByCryptogramResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Business Shop Response.
*/
@objc(AL_BusinessShopResponse)
public class AL_BusinessShopResponse : SyedAbsarObjectBase {


/// Business Name
var cpBusinessName: String?

/// Business Rif
var cpBusinessRif: String?

/// Store Name
var cpStoreName: String?

/// Pos Code
var cpPosCode: String?

/// Address
var cpAddress: String?

/// Phone Number
var cpPhoneNumber: String?

override static func cpKeys() -> Array<String> {
return ["BusinessName","BusinessRif","StoreName","PosCode","Address","PhoneNumber"]
}
}

/**
  Get Cumplimient Status.
*/
@objc(AL_GetCumplimientStatus)
public class AL_GetCumplimientStatus : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Cumplimient Status Response.
*/
@objc(AL_GetCumplimientStatusResponse)
public class AL_GetCumplimientStatusResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Cumplimient Response.
*/
@objc(AL_CumplimientResponse)
public class AL_CumplimientResponse : SyedAbsarObjectBase {


/// Cumplimients
var cpCumplimients: String?

override static func cpKeys() -> Array<String> {
return ["Cumplimients"]
}
}

/**
  Cumplimient.
*/
@objc(AL_Cumplimient)
public class AL_Cumplimient : SyedAbsarObjectBase {


/// A M L Percent
var cpAMLPercent: String?

/// Additional
var cpAdditional: String?

/// Address Id
var cpAddressId: String?

/// Agent Complient Id
var cpAgentComplientId: String?

/// Aproved Date
var cpAprovedDate: String?

/// Beginning Date
var cpBeginningDate: String?

/// Complient Status Id
var cpComplientStatusId: String?

/// Ending Date
var cpEndingDate: String?

/// Id
var cpId: String?

/// Img Document Date
var cpImgDocumentDate: String?

/// Img Profile
var cpImgProfile: String?

/// Is A M L
var cpIsAML: String?

/// Is K Y C
var cpIsKYC: String?

/// User Source Id
var cpUserSourceId: String?

override static func cpKeys() -> Array<String> {
return ["AMLPercent","Additional","AddressId","AgentComplientId","AprovedDate","BeginningDate","ComplientStatusId","EndingDate","Id","ImgDocumentDate","ImgProfile","IsAML","IsKYC","UserSourceId"]
}
}

/**
  Cumplimient Status.
*/
@objc(AL_CumplimientStatus)
public class AL_CumplimientStatus : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Value
var cpValue: String?

override static func cpKeys() -> Array<String> {
return ["Id","Value"]
}
}

/**
  Exchange Business Product.
*/
@objc(AL_ExchangeBusinessProduct)
public class AL_ExchangeBusinessProduct : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// Product Source Id
var cpProductSourceId: String?

/// Product Destination Id
var cpProductDestinationId: String?

/// Amount Exchange
var cpAmountExchange: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Included Fee
var cpIncludedFee: String?

/// Business Email
var cpBusinessEmail: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","ProductSourceId","ProductDestinationId","AmountExchange","ConceptTransaction","IncludedFee","BusinessEmail"]
}
}

/**
  Exchange Business Product Response.
*/
@objc(AL_ExchangeBusinessProductResponse)
public class AL_ExchangeBusinessProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Desactivate Card By Business.
*/
@objc(AL_DesactivateCardByBusiness)
public class AL_DesactivateCardByBusiness : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// User Email
var cpUserEmail: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","UserEmail","TimeZone"]
}
}

/**
  Desactivate Card By Business Response.
*/
@objc(AL_DesactivateCardByBusinessResponse)
public class AL_DesactivateCardByBusinessResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Top Up List.
*/
@objc(AL_TopUpList)
public class AL_TopUpList : SyedAbsarObjectBase {


/// Receiver Number
var cpReceiverNumber: String?

/// Phone Number
var cpPhoneNumber: String?

override static func cpKeys() -> Array<String> {
return ["ReceiverNumber","PhoneNumber"]
}
}

/**
  Top Up List Response.
*/
@objc(AL_TopUpListResponse)
public class AL_TopUpListResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Top Up Info List Response.
*/
@objc(AL_TopUpInfoListResponse)
public class AL_TopUpInfoListResponse : SyedAbsarObjectBase {


/// Top Up Infos
var cpTopUpInfos: String?

override static func cpKeys() -> Array<String> {
return ["TopUpInfos"]
}
}

/**
  Top Up Info.
*/
@objc(AL_TopUpInfo)
public class AL_TopUpInfo : SyedAbsarObjectBase {


/// Commission Percent
var cpCommissionPercent: String?

/// Country
var cpCountry: String?

/// Coutry Id
var cpCoutryId: String?

/// Creation Date
var cpCreationDate: String?

/// Denomination
var cpDenomination: String?

/// Denomination Receiver
var cpDenominationReceiver: String?

/// Denomination Sale
var cpDenominationSale: String?

/// Destination Currency
var cpDestinationCurrency: String?

/// Id
var cpId: String?

/// Increment
var cpIncrement: String?

/// Is Open Range
var cpIsOpenRange: String?

/// Maximum Amount
var cpMaximumAmount: String?

/// Minimum Amount
var cpMinimumAmount: String?

/// Operatorid
var cpOperatorid: String?

/// Opertador
var cpOpertador: String?

/// Skuid
var cpSkuid: String?

/// Wholesale Price
var cpWholesalePrice: String?

override static func cpKeys() -> Array<String> {
return ["CommissionPercent","Country","CoutryId","CreationDate","Denomination","DenominationReceiver","DenominationSale","DestinationCurrency","Id","Increment","IsOpenRange","MaximumAmount","MinimumAmount","Operatorid","Opertador","Skuid","WholesalePrice"]
}
}

/**
  Get Products By User Id.
*/
@objc(AL_GetProductsByUserId)
public class AL_GetProductsByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Products By User Id Response.
*/
@objc(AL_GetProductsByUserIdResponse)
public class AL_GetProductsByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Validate Recharge Product.
*/
@objc(AL_ValidateRechargeProduct)
public class AL_ValidateRechargeProduct : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Product I D
var cpProductID: String?

/// Amount To Recharge
var cpAmountToRecharge: String?

/// Include Fee
var cpIncludeFee: String?

override static func cpKeys() -> Array<String> {
return ["UserId","ProductID","AmountToRecharge","IncludeFee"]
}
}

/**
  Validate Recharge Product Response.
*/
@objc(AL_ValidateRechargeProductResponse)
public class AL_ValidateRechargeProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Account Type Bank.
*/
@objc(AL_GetAccountTypeBank)
public class AL_GetAccountTypeBank : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Account Type Bank Response.
*/
@objc(AL_GetAccountTypeBankResponse)
public class AL_GetAccountTypeBankResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Account Type Bank List Response.
*/
@objc(AL_AccountTypeBankListResponse)
public class AL_AccountTypeBankListResponse : SyedAbsarObjectBase {


/// Account Type Bank
var cpAccountTypeBank: String?

override static func cpKeys() -> Array<String> {
return ["AccountTypeBank"]
}
}

/**
  Get Bank App.
*/
@objc(AL_GetBankApp)
public class AL_GetBankApp : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Bank App Response.
*/
@objc(AL_GetBankAppResponse)
public class AL_GetBankAppResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Auth Plaid.
*/
@objc(AL_RetriveAuthPlaid)
public class AL_RetriveAuthPlaid : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Retrive Auth Plaid Response.
*/
@objc(AL_RetriveAuthPlaidResponse)
public class AL_RetriveAuthPlaidResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Retrive Auth Plaid Responses.
*/
@objc(AL_RetriveAuthPlaidResponses)
public class AL_RetriveAuthPlaidResponses : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

/// Retrive Auth Response
var cpRetriveAuthResponse: String?

override static func cpKeys() -> Array<String> {
return ["Products","RetriveAuthResponse"]
}
}

/**
  Retrive Auth Response.
*/
@objc(AL_RetriveAuthResponse)
public class AL_RetriveAuthResponse : SyedAbsarObjectBase {


/// Accounts
var cpAccounts: String?

/// Item
var cpItem: String?

/// Numbers
var cpNumbers: String?

/// Request_id
var cpRequest_id: String?

override static func cpKeys() -> Array<String> {
return ["Accounts","Item","Numbers","Request_id"]
}
}

/**
  Numbers.
*/
@objc(AL_Numbers)
public class AL_Numbers : SyedAbsarObjectBase {


/// Ach
var cpAch: String?

/// Eft
var cpEft: String?

override static func cpKeys() -> Array<String> {
return ["Ach","Eft"]
}
}

/**
  Ach.
*/
@objc(AL_Ach)
public class AL_Ach : SyedAbsarObjectBase {


/// Account
var cpAccount: String?

/// Account_id
var cpAccount_id: String?

/// Routing
var cpRouting: String?

/// Wire_routing
var cpWire_routing: String?

override static func cpKeys() -> Array<String> {
return ["Account","Account_id","Routing","Wire_routing"]
}
}

/**
  Save Transfer Between Business With User.
*/
@objc(AL_SaveTransferBetweenBusinessWithUser)
public class AL_SaveTransferBetweenBusinessWithUser : SyedAbsarObjectBase {


/// Product Id
var cpProductId: String?

/// Amount Transfer
var cpAmountTransfer: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Id User Destination
var cpIdUserDestination: String?

/// Business Id
var cpBusinessId: String?

override static func cpKeys() -> Array<String> {
return ["ProductId","AmountTransfer","ConceptTransaction","IdUserDestination","BusinessId"]
}
}

/**
  Save Transfer Between Business With User Response.
*/
@objc(AL_SaveTransferBetweenBusinessWithUserResponse)
public class AL_SaveTransferBetweenBusinessWithUserResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Process Remettence Account.
*/
@objc(AL_ProcessRemettenceAccount)
public class AL_ProcessRemettenceAccount : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Amount Origin
var cpAmountOrigin: String?

/// Total Amount
var cpTotalAmount: String?

/// Amount Destiny
var cpAmountDestiny: String?

/// Exchange Rate Id
var cpExchangeRateId: String?

/// Rate Payment Network Id
var cpRatePaymentNetworkId: String?

/// Origin Current Id
var cpOriginCurrentId: String?

/// Destiny Current Id
var cpDestinyCurrentId: String?

/// Payment Network Id
var cpPaymentNetworkId: String?

/// Delivery Form Id
var cpDeliveryFormId: String?

/// Address Id
var cpAddressId: String?

/// Remittent Country Id
var cpRemittentCountryId: String?

/// Remittent State Name
var cpRemittentStateName: String?

/// Remittent City Name
var cpRemittentCityName: String?

/// Remittent Address
var cpRemittentAddress: String?

/// Remittent Zip Code
var cpRemittentZipCode: String?

/// Remittent State Id
var cpRemittentStateId: String?

/// Remittent City Id
var cpRemittentCityId: String?

/// Receiver First Name
var cpReceiverFirstName: String?

/// Receiver Middle Name
var cpReceiverMiddleName: String?

/// Receiver Last Name
var cpReceiverLastName: String?

/// Receiver Second Surname
var cpReceiverSecondSurname: String?

/// Receiver Phone Number
var cpReceiverPhoneNumber: String?

/// Receiver Email
var cpReceiverEmail: String?

/// Receiver Country Id
var cpReceiverCountryId: String?

/// Receiver City Id
var cpReceiverCityId: String?

/// Receiver State Id
var cpReceiverStateId: String?

/// Receiver State Name
var cpReceiverStateName: String?

/// Receiver City Name
var cpReceiverCityName: String?

/// Receiver Address
var cpReceiverAddress: String?

/// Receiver Zip Code
var cpReceiverZipCode: String?

/// Language Id
var cpLanguageId: String?

override static func cpKeys() -> Array<String> {
return ["UserId","AmountOrigin","TotalAmount","AmountDestiny","ExchangeRateId","RatePaymentNetworkId","OriginCurrentId","DestinyCurrentId","PaymentNetworkId","DeliveryFormId","AddressId","RemittentCountryId","RemittentStateName","RemittentCityName","RemittentAddress","RemittentZipCode","RemittentStateId","RemittentCityId","ReceiverFirstName","ReceiverMiddleName","ReceiverLastName","ReceiverSecondSurname","ReceiverPhoneNumber","ReceiverEmail","ReceiverCountryId","ReceiverCityId","ReceiverStateId","ReceiverStateName","ReceiverCityName","ReceiverAddress","ReceiverZipCode","LanguageId"]
}
}

/**
  Process Remettence Account Response.
*/
@objc(AL_ProcessRemettenceAccountResponse)
public class AL_ProcessRemettenceAccountResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Remittance Response.
*/
@objc(AL_RemittanceResponse)
public class AL_RemittanceResponse : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Application Date
var cpApplicationDate: String?

/// Commentary
var cpCommentary: String?

/// Amount Origin
var cpAmountOrigin: String?

/// Total Amount
var cpTotalAmount: String?

/// Sending Option S M S
var cpSendingOptionSMS: String?

/// Amount Destiny
var cpAmountDestiny: String?

/// Bank
var cpBank: String?

/// Payment Service Id
var cpPaymentServiceId: String?

/// Secondary Key
var cpSecondaryKey: String?

/// Additional Changes
var cpAdditionalChanges: String?

/// Creation Date
var cpCreationDate: String?

/// Creation Hour
var cpCreationHour: String?

/// Local Sales
var cpLocalSales: String?

/// Reserve Field1
var cpReserveField1: String?

/// Remittent
var cpRemittent: String?

/// Receiver
var cpReceiver: String?

/// Correspondent
var cpCorrespondent: String?

/// Address Reciever
var cpAddressReciever: String?

/// Sales Type
var cpSalesType: String?

/// Address Remittent
var cpAddressRemittent: String?

/// Exchange Rate
var cpExchangeRate: String?

/// Rate Payment Network
var cpRatePaymentNetwork: String?

/// Language
var cpLanguage: String?

/// Origin Current
var cpOriginCurrent: String?

/// Destiny Current
var cpDestinyCurrent: String?

/// Payment Method
var cpPaymentMethod: String?

/// Service Type
var cpServiceType: String?

/// Payment Network
var cpPaymentNetwork: String?

/// Payment Network Point
var cpPaymentNetworkPoint: String?

/// Cash Box
var cpCashBox: String?

/// Cashier
var cpCashier: String?

/// Status
var cpStatus: String?

/// Remittance Number
var cpRemittanceNumber: String?

/// Payment Key
var cpPaymentKey: String?

/// Correlative
var cpCorrelative: String?

/// Delivery Form
var cpDeliveryForm: String?

/// Amount Transfer Total
var cpAmountTransferTotal: String?

override static func cpKeys() -> Array<String> {
return ["Id","ApplicationDate","Commentary","AmountOrigin","TotalAmount","SendingOptionSMS","AmountDestiny","Bank","PaymentServiceId","SecondaryKey","AdditionalChanges","CreationDate","CreationHour","LocalSales","ReserveField1","Remittent","Receiver","Correspondent","AddressReciever","SalesType","AddressRemittent","ExchangeRate","RatePaymentNetwork","Language","OriginCurrent","DestinyCurrent","PaymentMethod","ServiceType","PaymentNetwork","PaymentNetworkPoint","CashBox","Cashier","Status","RemittanceNumber","PaymentKey","Correlative","DeliveryForm","AmountTransferTotal"]
}
}

/**
  Save Payment Info.
*/
@objc(AL_SavePaymentInfo)
public class AL_SavePaymentInfo : SyedAbsarObjectBase {


/// User Api
var cpUserApi: String?

/// Password Api
var cpPasswordApi: String?

/// User Id
var cpUserId: String?

/// Estado
var cpEstado: String?

/// Ciudad
var cpCiudad: String?

/// Zip Code
var cpZipCode: String?

/// Addres1
var cpAddres1: String?

/// Payment Patner Id
var cpPaymentPatnerId: String?

/// Payment Type Id
var cpPaymentTypeId: String?

/// Credit Card Type Id
var cpCreditCardTypeId: String?

/// Credit Card Name
var cpCreditCardName: String?

/// Credit Card Number
var cpCreditCardNumber: String?

/// Credit Card C V V
var cpCreditCardCVV: String?

/// Credit Card Date
var cpCreditCardDate: String?

override static func cpKeys() -> Array<String> {
return ["UserApi","PasswordApi","UserId","Estado","Ciudad","ZipCode","Addres1","PaymentPatnerId","PaymentTypeId","CreditCardTypeId","CreditCardName","CreditCardNumber","CreditCardCVV","CreditCardDate"]
}
}

/**
  Save Payment Info Response.
*/
@objc(AL_SavePaymentInfoResponse)
public class AL_SavePaymentInfoResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Recharge Card.
*/
@objc(AL_RechargeCard)
public class AL_RechargeCard : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// User Email
var cpUserEmail: String?

/// Recharge Amount
var cpRechargeAmount: String?

/// Include Fee
var cpIncludeFee: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","UserEmail","RechargeAmount","IncludeFee"]
}
}

/**
  Recharge Card Response.
*/
@objc(AL_RechargeCardResponse)
public class AL_RechargeCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Has Prepay Card Asociated.
*/
@objc(AL_HasPrepayCardAsociated)
public class AL_HasPrepayCardAsociated : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Has Prepay Card Asociated Response.
*/
@objc(AL_HasPrepayCardAsociatedResponse)
public class AL_HasPrepayCardAsociatedResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Transfer Between Account.
*/
@objc(AL_SaveTransferBetweenAccount)
public class AL_SaveTransferBetweenAccount : SyedAbsarObjectBase {


/// Cryptogram User Source
var cpCryptogramUserSource: String?

/// Email User
var cpEmailUser: String?

/// Product Id
var cpProductId: String?

/// Amount Transfer
var cpAmountTransfer: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Cryptogram User Destination
var cpCryptogramUserDestination: String?

/// Id User Destination
var cpIdUserDestination: String?

override static func cpKeys() -> Array<String> {
return ["CryptogramUserSource","EmailUser","ProductId","AmountTransfer","ConceptTransaction","CryptogramUserDestination","IdUserDestination"]
}
}

/**
  Save Transfer Between Account Response.
*/
@objc(AL_SaveTransferBetweenAccountResponse)
public class AL_SaveTransferBetweenAccountResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Card By Phone.
*/
@objc(AL_GetCardByPhone)
public class AL_GetCardByPhone : SyedAbsarObjectBase {


/// Phone
var cpPhone: String?

override static func cpKeys() -> Array<String> {
return ["Phone"]
}
}

/**
  Get Card By Phone Response.
*/
@objc(AL_GetCardByPhoneResponse)
public class AL_GetCardByPhoneResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Send Mail.
*/
@objc(AL_SendMail)
public class AL_SendMail : SyedAbsarObjectBase {


/// Subject
var cpSubject: String?

/// Body
var cpBody: String?

/// To
var cpTo: String?

/// From
var cpFrom: String?

override static func cpKeys() -> Array<String> {
return ["Subject","Body","To","From"]
}
}

/**
  Send Mail Response.
*/
@objc(AL_SendMailResponse)
public class AL_SendMailResponse : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Public Token Plaid.
*/
@objc(AL_PublicTokenPlaid)
public class AL_PublicTokenPlaid : SyedAbsarObjectBase {


/// Methods
var cpMethods: String?

override static func cpKeys() -> Array<String> {
return ["Methods"]
}
}

/**
  Public Token Plaid Response.
*/
@objc(AL_PublicTokenPlaidResponse)
public class AL_PublicTokenPlaidResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Exchange Token Plaid Responses.
*/
@objc(AL_ExchangeTokenPlaidResponses)
public class AL_ExchangeTokenPlaidResponses : SyedAbsarObjectBase {


/// Products
var cpProducts: String?

/// Exchange Token Response
var cpExchangeTokenResponse: String?

/// Token Response
var cpTokenResponse: String?

override static func cpKeys() -> Array<String> {
return ["Products","ExchangeTokenResponse","TokenResponse"]
}
}

/**
  Exchange Token Response.
*/
@objc(AL_ExchangeTokenResponse)
public class AL_ExchangeTokenResponse : SyedAbsarObjectBase {


/// Access_token
var cpAccess_token: String?

/// Item_id
var cpItem_id: String?

/// Request_id
var cpRequest_id: String?

override static func cpKeys() -> Array<String> {
return ["Access_token","Item_id","Request_id"]
}
}

/**
  Save Product.
*/
@objc(AL_SaveProduct)
public class AL_SaveProduct : SyedAbsarObjectBase {


/// Enterprise
var cpEnterprise: String?

/// Category
var cpCategory: String?

/// Product Integration Type Id
var cpProductIntegrationTypeId: String?

/// Name
var cpName: String?

/// Tax Include
var cpTaxInclude: String?

/// Status
var cpStatus: String?

/// Reference Code
var cpReferenceCode: String?

/// Rate Url
var cpRateUrl: String?

/// Acces Number Url
var cpAccesNumberUrl: String?

/// Is Free
var cpIsFree: String?

/// Is Alocashproduct
var cpIsAlocashproduct: String?

/// Symbol
var cpSymbol: String?

override static func cpKeys() -> Array<String> {
return ["Enterprise","Category","ProductIntegrationTypeId","Name","TaxInclude","Status","ReferenceCode","RateUrl","AccesNumberUrl","IsFree","IsAlocashproduct","Symbol"]
}
}

/**
  Save Product Response.
*/
@objc(AL_SaveProductResponse)
public class AL_SaveProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Balance Inquiry Without Movements.
*/
@objc(AL_BalanceInquiryWithoutMovements)
public class AL_BalanceInquiryWithoutMovements : SyedAbsarObjectBase {


/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["Email"]
}
}

/**
  Balance Inquiry Without Movements Response.
*/
@objc(AL_BalanceInquiryWithoutMovementsResponse)
public class AL_BalanceInquiryWithoutMovementsResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Balance Inquiry Without Movements Responses.
*/
@objc(AL_BalanceInquiryWithoutMovementsResponses)
public class AL_BalanceInquiryWithoutMovementsResponses : SyedAbsarObjectBase {


/// Balance Inquiry Without Movements Credential
var cpBalanceInquiryWithoutMovementsCredential: String?

override static func cpKeys() -> Array<String> {
return ["BalanceInquiryWithoutMovementsCredential"]
}
}

/**
  Balance Inquiry Without Movements Credential.
*/
@objc(AL_BalanceInquiryWithoutMovementsCredential)
public class AL_BalanceInquiryWithoutMovementsCredential : SyedAbsarObjectBase {


/// Code Error
var cpCodeError: String?

/// Message Error
var cpMessageError: String?

/// Code Answer
var cpCodeAnswer: String?

/// Message Response
var cpMessageResponse: String?

/// Code Authorization
var cpCodeAuthorization: String?

/// Available Consumption
var cpAvailableConsumption: String?

/// Available Quotas
var cpAvailableQuotas: String?

/// Available Advances
var cpAvailableAdvances: String?

/// Available Loans
var cpAvailableLoans: String?

/// Balance
var cpBalance: String?

/// Balance In Dollars
var cpBalanceInDollars: String?

/// Minimum Payment
var cpMinimumPayment: String?

/// Expiration Date Last Settlement
var cpExpirationDateLastSettlement: String?

override static func cpKeys() -> Array<String> {
return ["CodeError","MessageError","CodeAnswer","MessageResponse","CodeAuthorization","AvailableConsumption","AvailableQuotas","AvailableAdvances","AvailableLoans","Balance","BalanceInDollars","MinimumPayment","ExpirationDateLastSettlement"]
}
}

/**
  Get Card By User Id.
*/
@objc(AL_GetCardByUserId)
public class AL_GetCardByUserId : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Get Card By User Id Response.
*/
@objc(AL_GetCardByUserIdResponse)
public class AL_GetCardByUserIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save Business Has Product Default.
*/
@objc(AL_SaveBusinessHasProductDefault)
public class AL_SaveBusinessHasProductDefault : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId"]
}
}

/**
  Save Business Has Product Default Response.
*/
@objc(AL_SaveBusinessHasProductDefaultResponse)
public class AL_SaveBusinessHasProductDefaultResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Business Has Product Response.
*/
@objc(AL_BusinessHasProductResponse)
public class AL_BusinessHasProductResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

override static func cpKeys() -> Array<String> {
return ["Response"]
}
}

/**
  Preview Exchange Product.
*/
@objc(AL_PreviewExchangeProduct)
public class AL_PreviewExchangeProduct : SyedAbsarObjectBase {


/// Email User
var cpEmailUser: String?

/// Product Source Id
var cpProductSourceId: String?

/// Product Destination Id
var cpProductDestinationId: String?

/// Amount Exchange
var cpAmountExchange: String?

/// Included Amount
var cpIncludedAmount: String?

override static func cpKeys() -> Array<String> {
return ["EmailUser","ProductSourceId","ProductDestinationId","AmountExchange","IncludedAmount"]
}
}

/**
  Preview Exchange Product Response.
*/
@objc(AL_PreviewExchangeProductResponse)
public class AL_PreviewExchangeProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Manual Withdrawals.
*/
@objc(AL_ManualWithdrawals)
public class AL_ManualWithdrawals : SyedAbsarObjectBase {


/// Bank Id
var cpBankId: String?

/// Email User
var cpEmailUser: String?

/// Amount Withdrawal
var cpAmountWithdrawal: String?

/// Product Id
var cpProductId: String?

/// Concept Transaction
var cpConceptTransaction: String?

/// Document Type Id
var cpDocumentTypeId: String?

/// Origin Application Id
var cpOriginApplicationId: String?

override static func cpKeys() -> Array<String> {
return ["BankId","EmailUser","AmountWithdrawal","ProductId","ConceptTransaction","DocumentTypeId","OriginApplicationId"]
}
}

/**
  Manual Withdrawals Response.
*/
@objc(AL_ManualWithdrawalsResponse)
public class AL_ManualWithdrawalsResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Save User Has Product Default.
*/
@objc(AL_SaveUserHasProductDefault)
public class AL_SaveUserHasProductDefault : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Save User Has Product Default Response.
*/
@objc(AL_SaveUserHasProductDefaultResponse)
public class AL_SaveUserHasProductDefaultResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Transactions By User Id App.
*/
@objc(AL_GetTransactionsByUserIdApp)
public class AL_GetTransactionsByUserIdApp : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Max Result
var cpMaxResult: String?

override static func cpKeys() -> Array<String> {
return ["UserId","MaxResult"]
}
}

/**
  Get Transactions By User Id App Response.
*/
@objc(AL_GetTransactionsByUserIdAppResponse)
public class AL_GetTransactionsByUserIdAppResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Generar Codigo Movil S M S.
*/
@objc(AL_GenerarCodigoMovilSMS)
public class AL_GenerarCodigoMovilSMS : SyedAbsarObjectBase {


/// Movil
var cpMovil: String?

/// Codigo
var cpCodigo: String?

override static func cpKeys() -> Array<String> {
return ["Movil","Codigo"]
}
}

/**
  Generar Codigo Movil S M S Response.
*/
@objc(AL_GenerarCodigoMovilSMSResponse)
public class AL_GenerarCodigoMovilSMSResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Recharge Wallet Product.
*/
@objc(AL_RechargeWalletProduct)
public class AL_RechargeWalletProduct : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// User Id
var cpUserId: String?

/// Product Id
var cpProductId: String?

/// Amount To Recharge
var cpAmountToRecharge: String?

/// Include Fee
var cpIncludeFee: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","UserId","ProductId","AmountToRecharge","IncludeFee"]
}
}

/**
  Recharge Wallet Product Response.
*/
@objc(AL_RechargeWalletProductResponse)
public class AL_RechargeWalletProductResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Balance History By Product And Business Id.
*/
@objc(AL_GetBalanceHistoryByProductAndBusinessId)
public class AL_GetBalanceHistoryByProductAndBusinessId : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: String?

/// Product Id
var cpProductId: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","ProductId"]
}
}

/**
  Get Balance History By Product And Business Id Response.
*/
@objc(AL_GetBalanceHistoryByProductAndBusinessIdResponse)
public class AL_GetBalanceHistoryByProductAndBusinessIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Has Prepay Card.
*/
@objc(AL_HasPrepayCard)
public class AL_HasPrepayCard : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserId"]
}
}

/**
  Has Prepay Card Response.
*/
@objc(AL_HasPrepayCardResponse)
public class AL_HasPrepayCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Send Mail Test.
*/
@objc(AL_SendMailTest)
public class AL_SendMailTest : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Send Mail Test Response.
*/
@objc(AL_SendMailTestResponse)
public class AL_SendMailTestResponse : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Get Payment Info.
*/
@objc(AL_GetPaymentInfo)
public class AL_GetPaymentInfo : SyedAbsarObjectBase {


/// User Api
var cpUserApi: String?

/// Password Api
var cpPasswordApi: String?

/// User Id
var cpUserId: String?

override static func cpKeys() -> Array<String> {
return ["UserApi","PasswordApi","UserId"]
}
}

/**
  Get Payment Info Response.
*/
@objc(AL_GetPaymentInfoResponse)
public class AL_GetPaymentInfoResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Payment Info List Response.
*/
@objc(AL_PaymentInfoListResponse)
public class AL_PaymentInfoListResponse : SyedAbsarObjectBase {


/// Payment Infos
var cpPaymentInfos: String?

override static func cpKeys() -> Array<String> {
return ["PaymentInfos"]
}
}


/**
    A generic base class for all Objects.
*/
public class AL_SyedAbsarObjectBase : NSObject
{
    var xmlResponseString: String?

    class func cpKeys() -> Array <String>
    {
        return []
    }
    
    required override public init(){}
  
    class func newInstance() -> Self {
        return self.init()
    }


}


