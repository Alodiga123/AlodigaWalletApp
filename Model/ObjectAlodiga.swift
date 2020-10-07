//
//  ObjectAlodiga.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/6/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation


/**
  Activate Card.
*/
@objc(AL_ActivateCard)
public class AL_ActivateCard : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["UserId","Card","TimeZone","Status"]
}
}

/**
  Activate Card Response.
*/
@objc(AL_ActivateCardResponse)
public class AL_ActivateCardResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Activate Card Responses.
*/
@objc(AL_ActivateCardResponses)
public class AL_ActivateCardResponses : SyedAbsarObjectBase {


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
public class AL_Response : SyedAbsarObjectBase {


/// Fecha Hora
var cpFechaHora: NSDate?

/// Codigo Respuesta
var cpCodigoRespuesta: String?

/// Mensaje Respuesta
var cpMensajeRespuesta: String?

/// Id Transaction
var cpIdTransaction: String?

/// Id Bussines
var cpIdBussines: CLong?

override static func cpKeys() -> Array<String> {
return ["FechaHora","CodigoRespuesta","MensajeRespuesta","IdTransaction","IdBussines"]
}
}

/**
  Change Status Credential Card.
*/
@objc(AL_ChangeStatusCredentialCard)
public class AL_ChangeStatusCredentialCard : SyedAbsarObjectBase {


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
public class AL_Product : SyedAbsarObjectBase {


/// Access Number Url
var cpAccessNumberUrl: String?

/// Category Id
var cpCategoryId: String?

/// Current Balance
var cpCurrentBalance: Float?

/// Enabled
var cpEnabled: Bool?

/// Enterprise Id
var cpEnterpriseId: String?

/// Id
var cpId: CLong?

/// Ind Has Associated Bank
var cpIndHasAssociatedBank: Bool?

/// Is Alocash Product
var cpIsAlocashProduct: Bool?

/// Is Exchange Product
var cpIsExchangeProduct: Bool?

/// Is Free
var cpIsFree: Bool?

/// Is Pay Top Up
var cpIsPayTopUp: Bool?

/// Is Payment Info
var cpIsPaymentInfo: Bool?

/// Is Remettence
var cpIsRemettence: Bool?

/// Name
var cpName: String?

/// Product Integration Type Id
var cpProductIntegrationTypeId: String?

/// Rates Url
var cpRatesUrl: String?

/// Reference Code
var cpReferenceCode: String?

/// Symbol
var cpSymbol: String?

/// Tax Include
var cpTaxInclude: Bool?

override static func cpKeys() -> Array<String> {
return ["AccessNumberUrl","CategoryId","CurrentBalance","Enabled","EnterpriseId","Id","IndHasAssociatedBank","IsAlocashProduct","IsExchangeProduct","IsFree","IsPayTopUp","IsPaymentInfo","IsRemettence","Name","ProductIntegrationTypeId","RatesUrl","ReferenceCode","Symbol","TaxInclude"]
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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Enabled","Id","Name"]
}
}

/**
  Enterprise.
*/
@objc(AL_Enterprise)
public class AL_Enterprise : SyedAbsarObjectBase {


/// Address
var cpAddress: String?

/// Atc Number
var cpAtcNumber: String?

/// Country Id
var cpCountryId: String?

/// Currency Id
var cpCurrencyId: String?

/// Email
var cpEmail: String?

/// Enabled
var cpEnabled: Bool?

/// Id
var cpId: CLong?

/// Info Email
var cpInfoEmail: String?

/// Invoice Address
var cpInvoiceAddress: String?

/// Name
var cpName: String?

/// Url
var cpUrl: String?

override static func cpKeys() -> Array<String> {
return ["Address","AtcNumber","CountryId","CurrencyId","Email","Enabled","Id","InfoEmail","InvoiceAddress","Name","Url"]
}
}

/**
  Country.
*/
@objc(AL_Country)
public class AL_Country : SyedAbsarObjectBase {


/// Alternative Name1
var cpAlternativeName1: String?

/// Alternative Name2
var cpAlternativeName2: String?

/// Alternative Name3
var cpAlternativeName3: String?

/// Code
var cpCode: String?

/// Id
var cpId: CLong?

/// Name
var cpName: String?

/// Short Name
var cpShortName: String?

override static func cpKeys() -> Array<String> {
return ["AlternativeName1","AlternativeName2","AlternativeName3","Code","Id","Name","ShortName"]
}
}

/**
  Currency.
*/
@objc(AL_Currency)
public class AL_Currency : SyedAbsarObjectBase {


/// Id
var cpId: CLong?

/// Name
var cpName: String?

/// Symbol
var cpSymbol: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name","Symbol"]
}
}

/**
  Product Integration Type.
*/
@objc(AL_ProductIntegrationType)
public class AL_ProductIntegrationType : SyedAbsarObjectBase {


/// Id
var cpId: CLong?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Desactivate Card.
*/
@objc(AL_DesactivateCard)
public class AL_DesactivateCard : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

/// Status
var cpStatus: String?

override static func cpKeys() -> Array<String> {
return ["UserId","Card","TimeZone","Status"]
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
  Manual Recharge.
*/
@objc(AL_ManualRecharge)
public class AL_ManualRecharge : SyedAbsarObjectBase {


/// Bank Id
var cpBankId: CLong?

/// Email User
var cpEmailUser: String?

/// Reference Number Operation
var cpReferenceNumberOperation: String?

/// Amount Recharge
var cpAmountRecharge: Float?

/// Product Id
var cpProductId: CLong?

/// Concept Transaction
var cpConceptTransaction: String?

override static func cpKeys() -> Array<String> {
return ["BankId","EmailUser","ReferenceNumberOperation","AmountRecharge","ProductId","ConceptTransaction"]
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
  Transaction Response.
*/
@objc(AL_TransactionResponse)
public class AL_TransactionResponse : SyedAbsarObjectBase {


/// Response
var cpResponse: String?

/// Products
var cpProducts: String?

/// Amount Commission
var cpAmountCommission: Float?

/// Value Commission
var cpValueCommission: Float?

/// Total Debit
var cpTotalDebit: Float?

/// Amount Conversion
var cpAmountConversion: Float?

/// Exchange Rate Product Source
var cpExchangeRateProductSource: Float?

/// Exchange Rate Product Destination
var cpExchangeRateProductDestination: Float?

/// Is Percent Commision
var cpIsPercentCommision: CShort?

override static func cpKeys() -> Array<String> {
return ["Response","Products","AmountCommission","ValueCommission","TotalDebit","AmountConversion","ExchangeRateProductSource","ExchangeRateProductDestination","IsPercentCommision"]
}
}

/**
  Transaction.
*/
@objc(AL_Transaction)
public class AL_Transaction : SyedAbsarObjectBase {


/// Additional
var cpAdditional: String?

/// Additional2
var cpAdditional2: String?

/// Amount
var cpAmount: Float?

/// Bill Payment Description
var cpBillPaymentDescription: String?

/// Close Id
var cpCloseId: String?

/// Commision Amount
var cpCommisionAmount: String?

/// Concept
var cpConcept: String?

/// Creation Date
var cpCreationDate: NSDate?

/// Daily Closing Id
var cpDailyClosingId: String?

/// Destination User
var cpDestinationUser: String?

/// External Id
var cpExternalId: String?

/// Id
var cpId: CLong?

/// Ind Closed
var cpIndClosed: Bool?

/// Payment Info Id
var cpPaymentInfoId: String?

/// Product Id
var cpProductId: String?

/// Promotion Amount
var cpPromotionAmount: Float?

/// Top Up Description
var cpTopUpDescription: String?

/// Total Alopoints Used
var cpTotalAlopointsUsed: Float?

/// Total Amount
var cpTotalAmount: Float?

/// Total Tax
var cpTotalTax: Float?

/// Transaction Number
var cpTransactionNumber: String?

/// Transaction Source Id
var cpTransactionSourceId: String?

/// Transaction Status
var cpTransactionStatus: String?

/// Transaction Type
var cpTransactionType: String?

/// Transaction Type Id
var cpTransactionTypeId: String?

/// User Destination Id
var cpUserDestinationId: Int?

/// User Source Id
var cpUserSourceId: Int?

override static func cpKeys() -> Array<String> {
return ["Additional","Additional2","Amount","BillPaymentDescription","CloseId","CommisionAmount","Concept","CreationDate","DailyClosingId","DestinationUser","ExternalId","Id","IndClosed","PaymentInfoId","ProductId","PromotionAmount","TopUpDescription","TotalAlopointsUsed","TotalAmount","TotalTax","TransactionNumber","TransactionSourceId","TransactionStatus","TransactionType","TransactionTypeId","UserDestinationId","UserSourceId"]
}
}

/**
  Close.
*/
@objc(AL_Close)
public class AL_Close : SyedAbsarObjectBase {


/// Creation Date
var cpCreationDate: NSDate?

/// Id
var cpId: CLong?

/// Status
var cpStatus: String?

/// Total Amount
var cpTotalAmount: Float?

/// Total Tax
var cpTotalTax: Float?

/// Total To User
var cpTotalToUser: Float?

/// User Comerce Id
var cpUserComerceId: Int?

override static func cpKeys() -> Array<String> {
return ["CreationDate","Id","Status","TotalAmount","TotalTax","TotalToUser","UserComerceId"]
}
}

/**
  Daily Closing.
*/
@objc(AL_DailyClosing)
public class AL_DailyClosing : SyedAbsarObjectBase {


/// Closing Date
var cpClosingDate: NSDate?

/// Closing End Time
var cpClosingEndTime: NSDate?

/// Closing Start Time
var cpClosingStartTime: NSDate?

/// Create Date
var cpCreateDate: NSDate?

/// Daily Closing Type Id
var cpDailyClosingTypeId: String?

/// Id
var cpId: CLong?

/// Total Transactions
var cpTotalTransactions: Int?

/// Update Date
var cpUpdateDate: NSDate?

override static func cpKeys() -> Array<String> {
return ["ClosingDate","ClosingEndTime","ClosingStartTime","CreateDate","DailyClosingTypeId","Id","TotalTransactions","UpdateDate"]
}
}

/**
  Daily Closing Type.
*/
@objc(AL_DailyClosingType)
public class AL_DailyClosingType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Payment Info.
*/
@objc(AL_PaymentInfo)
public class AL_PaymentInfo : SyedAbsarObjectBase {


/// Beginning Date
var cpBeginningDate: NSDate?

/// Billing Address Id
var cpBillingAddressId: String?

/// Credit Card C V V
var cpCreditCardCVV: String?

/// Credit Card Date
var cpCreditCardDate: NSDate?

/// Credit Card Name
var cpCreditCardName: String?

/// Credit Card Number
var cpCreditCardNumber: String?

/// Credit Card Type Id
var cpCreditCardTypeId: String?

/// Enabled
var cpEnabled: Bool?

/// Ending Date
var cpEndingDate: NSDate?

/// Id
var cpId: CLong?

/// Payment Patner Id
var cpPaymentPatnerId: String?

/// Payment Type Id
var cpPaymentTypeId: String?

/// User Id
var cpUserId: Int?

override static func cpKeys() -> Array<String> {
return ["BeginningDate","BillingAddressId","CreditCardCVV","CreditCardDate","CreditCardName","CreditCardNumber","CreditCardTypeId","Enabled","EndingDate","Id","PaymentPatnerId","PaymentTypeId","UserId"]
}
}

/**
  Address.
*/
@objc(AL_Address)
public class AL_Address : SyedAbsarObjectBase {


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
var cpFloor: Int?

/// Id
var cpId: CLong?

/// Ind Main Address
var cpIndMainAddress: Bool?

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
  Address Type.
*/
@objc(AL_AddressType)
public class AL_AddressType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

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
var cpId: CLong?

/// Name
var cpName: String?

/// State Id
var cpStateId: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name","StateId"]
}
}

/**
  State.
*/
@objc(AL_State)
public class AL_State : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Id
var cpId: CLong?

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
var cpId: CLong?

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
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Street Type.
*/
@objc(AL_StreetType)
public class AL_StreetType : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

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
var cpEnabled: Bool?

/// Encription Key
var cpEncriptionKey: String?

/// Id
var cpId: CLong?

/// Integration Type Id
var cpIntegrationTypeId: String?

/// Name
var cpName: String?

/// Payment User
var cpPaymentUser: String?

/// Test Mode
var cpTestMode: Bool?

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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

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


/// Id
var cpId: CLong?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Transaction Type.
*/
@objc(AL_TransactionType)
public class AL_TransactionType : SyedAbsarObjectBase {


/// Id
var cpId: CLong?

/// Value
var cpValue: String?

override static func cpKeys() -> Array<String> {
return ["Id","Value"]
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
var cpProductId: CLong?

/// Cryptogram User
var cpCryptogramUser: String?

/// Skud Id
var cpSkudId: String?

/// Destination Number
var cpDestinationNumber: String?

/// Sender Number
var cpSenderNumber: String?

/// Amount Recharge
var cpAmountRecharge: Float?

/// Amount Payment
var cpAmountPayment: Float?

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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

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
var cpUserId: CLong?

/// Product Id
var cpProductId: CLong?

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

/// Current Amount
var cpCurrentAmount: Float?

/// Date
var cpDate: NSDate?

/// Id
var cpId: CLong?

/// Old Amount
var cpOldAmount: Float?

/// Product Id
var cpProductId: String?

/// Transaction Id
var cpTransactionId: String?

/// User Id
var cpUserId: CLong?

/// Version
var cpVersion: CLong?

override static func cpKeys() -> Array<String> {
return ["AdjusmentInfo","CurrentAmount","Date","Id","OldAmount","ProductId","TransactionId","UserId","Version"]
}
}

/**
  Transfer Card To Card Autorization.
*/
@objc(AL_TransferCardToCardAutorization)
public class AL_TransferCardToCardAutorization : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

/// Number Card Origin
var cpNumberCardOrigin: String?

/// Number Card Destinate
var cpNumberCardDestinate: String?

/// Balance
var cpBalance: String?

/// Id User Destination
var cpIdUserDestination: CLong?

/// Concept Transaction
var cpConceptTransaction: String?

override static func cpKeys() -> Array<String> {
return ["UserId","NumberCardOrigin","NumberCardDestinate","Balance","IdUserDestination","ConceptTransaction"]
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
var cpPaymentInfoId: CLong?

/// Status
var cpStatus: Bool?

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
  Save Payment Shop.
*/
@objc(AL_SavePaymentShop)
public class AL_SavePaymentShop : SyedAbsarObjectBase {


/// Cryptograma Shop
var cpCryptogramaShop: String?

/// Email User
var cpEmailUser: String?

/// Product Id
var cpProductId: CLong?

/// Amount Payment
var cpAmountPayment: Float?

/// Concept Transaction
var cpConceptTransaction: String?

/// Cryptograma User
var cpCryptogramaUser: String?

/// Id User Destination
var cpIdUserDestination: CLong?

override static func cpKeys() -> Array<String> {
return ["CryptogramaShop","EmailUser","ProductId","AmountPayment","ConceptTransaction","CryptogramaUser","IdUserDestination"]
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
var cpUserId: CLong?

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
var cpProductSourceId: CLong?

/// Product Destination Id
var cpProductDestinationId: CLong?

/// Amount Exchange
var cpAmountExchange: Float?

/// Concept Transaction
var cpConceptTransaction: String?

/// Included Amount
var cpIncludedAmount: Int?

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
var cpId: CLong?

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
var cpUserId: CLong?

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
var cpBusinessId: CLong?

/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","Card","TimeZone"]
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
  Bank Generic.
*/
@objc(AL_BankGeneric)
public class AL_BankGeneric : SyedAbsarObjectBase {


/// Aba
var cpAba: String?

/// Id
var cpId: String?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Aba","Id","Name"]
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
var cpId: CLong?

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
  Validate Recharge Card.
*/
@objc(AL_ValidateRechargeCard)
public class AL_ValidateRechargeCard : SyedAbsarObjectBase {


/// Recharge Amount
var cpRechargeAmount: String?

/// Include Fee
var cpIncludeFee: Bool?

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


/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["Card","TimeZone"]
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
  Check Status Card.
*/
@objc(AL_CheckStatusCard)
public class AL_CheckStatusCard : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["UserId","Card","TimeZone"]
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
  Card.
*/
@objc(AL_Card)
public class AL_Card : SyedAbsarObjectBase {


/// Id
var cpId: CLong?

/// Name Card
var cpNameCard: String?

/// Number Card
var cpNumberCard: String?

/// Parent Id
var cpParentId: Int?

/// Status Card Id
var cpStatusCardId: String?

/// User Destination Id
var cpUserDestinationId: Int?

override static func cpKeys() -> Array<String> {
return ["Id","NameCard","NumberCard","ParentId","StatusCardId","UserDestinationId"]
}
}

/**
  Status Card.
*/
@objc(AL_StatusCard)
public class AL_StatusCard : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
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
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
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
  Save Account Bank.
*/
@objc(AL_SaveAccountBank)
public class AL_SaveAccountBank : SyedAbsarObjectBase {


/// Unified Registry Id
var cpUnifiedRegistryId: CLong?

/// Account Number
var cpAccountNumber: String?

/// Bank Id
var cpBankId: CLong?

/// Account Type Bank Id
var cpAccountTypeBankId: Int?

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

/// Create Date
var cpCreateDate: NSDate?

/// Id
var cpId: CLong?

/// Status Account Bank Id
var cpStatusAccountBankId: String?

/// Unified Registry Id
var cpUnifiedRegistryId: CLong?

/// Update Date
var cpUpdateDate: NSDate?

override static func cpKeys() -> Array<String> {
return ["AccountNumber","AccountTypeBankId","BankId","CreateDate","Id","StatusAccountBankId","UnifiedRegistryId","UpdateDate"]
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
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Bank.
*/
@objc(AL_Bank)
public class AL_Bank : SyedAbsarObjectBase {


/// Aba Code
var cpAbaCode: String?

/// Country Id
var cpCountryId: String?

/// Enterprise Id
var cpEnterpriseId: String?

/// Id
var cpId: CLong?

/// Name
var cpName: String?

/// Swift Code
var cpSwiftCode: String?

override static func cpKeys() -> Array<String> {
return ["AbaCode","CountryId","EnterpriseId","Id","Name","SwiftCode"]
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
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Check Status Account.
*/
@objc(AL_CheckStatusAccount)
public class AL_CheckStatusAccount : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

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
var cpUserId: CLong?

/// Amount Recharge
var cpAmountRecharge: Float?

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
var cpPaymentInfoId: CLong?

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
  Send Sms Simbox.
*/
@objc(AL_SendSmsSimbox)
public class AL_SendSmsSimbox : SyedAbsarObjectBase {


/// Phone Number
var cpPhoneNumber: String?

/// Text
var cpText: String?

/// User Id
var cpUserId: CLong?

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
  Save Cumplimient.
*/
@objc(AL_SaveCumplimient)
public class AL_SaveCumplimient : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

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
  Save Transaction Approve Request.
*/
@objc(AL_SaveTransactionApproveRequest)
public class AL_SaveTransactionApproveRequest : SyedAbsarObjectBase {


/// Unified Registry Id
var cpUnifiedRegistryId: CLong?

/// Product Id
var cpProductId: CLong?

/// Transaction Id
var cpTransactionId: CLong?

/// Bank Operation Id
var cpBankOperationId: CLong?

/// Document Type Id
var cpDocumentTypeId: CLong?

/// Origin Application Id
var cpOriginApplicationId: CLong?

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
var cpApprovedRequestDate: NSDate?

/// Bank Operation Id
var cpBankOperationId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Id
var cpId: CLong?

/// Ind Approve Request
var cpIndApproveRequest: Bool?

/// Observations
var cpObservations: String?

/// Product Id
var cpProductId: String?

/// Request Date
var cpRequestDate: NSDate?

/// Request Number
var cpRequestNumber: String?

/// Status Transaction Approve Request Id
var cpStatusTransactionApproveRequestId: String?

/// Transaction Id
var cpTransactionId: String?

/// Unified Registry User Id
var cpUnifiedRegistryUserId: CLong?

/// Update Date
var cpUpdateDate: NSDate?

/// User Approved Request Id
var cpUserApprovedRequestId: String?

override static func cpKeys() -> Array<String> {
return ["ApprovedRequestDate","BankOperationId","CreateDate","Id","IndApproveRequest","Observations","ProductId","RequestDate","RequestNumber","StatusTransactionApproveRequestId","TransactionId","UnifiedRegistryUserId","UpdateDate","UserApprovedRequestId"]
}
}

/**
  Bank Operation.
*/
@objc(AL_BankOperation)
public class AL_BankOperation : SyedAbsarObjectBase {


/// Account Bank Id
var cpAccountBankId: String?

/// Additional
var cpAdditional: String?

/// Additional2
var cpAdditional2: String?

/// Bank Id
var cpBankId: String?

/// Bank Operation Amount
var cpBankOperationAmount: Float?

/// Bank Operation Date
var cpBankOperationDate: NSDate?

/// Bank Operation Mode Id
var cpBankOperationModeId: String?

/// Bank Operation Number
var cpBankOperationNumber: String?

/// Bank Operation Type Id
var cpBankOperationTypeId: String?

/// Commision Id
var cpCommisionId: String?

/// Id
var cpId: CLong?

/// Payment Type Id
var cpPaymentTypeId: String?

/// Product Id
var cpProductId: String?

/// Transaction Id
var cpTransactionId: String?

/// User Source Id
var cpUserSourceId: Int?

override static func cpKeys() -> Array<String> {
return ["AccountBankId","Additional","Additional2","BankId","BankOperationAmount","BankOperationDate","BankOperationModeId","BankOperationNumber","BankOperationTypeId","CommisionId","Id","PaymentTypeId","ProductId","TransactionId","UserSourceId"]
}
}

/**
  Bank Operation Mode.
*/
@objc(AL_BankOperationMode)
public class AL_BankOperationMode : SyedAbsarObjectBase {


/// Id
var cpId: CLong?

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
var cpId: CLong?

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
var cpBeginningDate: NSDate?

/// Ending Date
var cpEndingDate: NSDate?

/// Id
var cpId: CLong?

/// Ind Application Commission
var cpIndApplicationCommission: Int?

/// Is Percent Commision
var cpIsPercentCommision: CShort?

/// Product Id
var cpProductId: String?

/// Transaction Type Id
var cpTransactionTypeId: String?

/// Value
var cpValue: Float?

override static func cpKeys() -> Array<String> {
return ["BeginningDate","EndingDate","Id","IndApplicationCommission","IsPercentCommision","ProductId","TransactionTypeId","Value"]
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
var cpCreationDate: NSDate?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Email
var cpEmail: String?

/// Employee Id
var cpEmployeeId: String?

/// Enabled
var cpEnabled: Bool?

/// First Name
var cpFirstName: String?

/// Id
var cpId: CLong?

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
var cpReceiveTopUpNotification: Bool?

/// User Has Profile
var cpUserHasProfile: String?

override static func cpKeys() -> Array<String> {
return ["AuthorizedEmployeeId","CreationDate","DocumentsPersonTypeId","Email","EmployeeId","Enabled","FirstName","Id","IdentificationNumber","LastName","Login","Password","PersonId","PhoneNumber","ReceiveTopUpNotification","UserHasProfile"]
}
}

/**
  Employee.
*/
@objc(AL_Employee)
public class AL_Employee : SyedAbsarObjectBase {


/// Comercial Agency Id
var cpComercialAgencyId: String?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Employed Position Id
var cpEmployedPositionId: String?

/// First Names
var cpFirstNames: String?

/// Id
var cpId: Int?

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
  Comercial Agency.
*/
@objc(AL_ComercialAgency)
public class AL_ComercialAgency : SyedAbsarObjectBase {


/// City Id
var cpCityId: String?

/// Id
var cpId: Int?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["CityId","Id","Name"]
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
var cpId: Int?

/// Person Type Id
var cpPersonTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CodeIdentification","Description","Id","PersonTypeId"]
}
}

/**
  Person Type.
*/
@objc(AL_PersonType)
public class AL_PersonType : SyedAbsarObjectBase {


/// Country Id
var cpCountryId: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

/// Ind Natural Person
var cpIndNaturalPerson: Bool?

/// Origin Application Id
var cpOriginApplicationId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","Description","Id","IndNaturalPerson","OriginApplicationId"]
}
}

/**
  Origin Application.
*/
@objc(AL_OriginApplication)
public class AL_OriginApplication : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Id
var cpId: Int?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Code","Id","Name"]
}
}

/**
  Employed Position.
*/
@objc(AL_EmployedPosition)
public class AL_EmployedPosition : SyedAbsarObjectBase {


/// Id
var cpId: Int?

/// Name
var cpName: String?

override static func cpKeys() -> Array<String> {
return ["Id","Name"]
}
}

/**
  Person.
*/
@objc(AL_Person)
public class AL_Person : SyedAbsarObjectBase {


/// Business Affiliation Request
var cpBusinessAffiliationRequest: String?

/// Country Id
var cpCountryId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Email
var cpEmail: String?

/// Employee
var cpEmployee: String?

/// Id
var cpId: CLong?

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
var cpUpdateDate: NSDate?

/// Web Site
var cpWebSite: String?

override static func cpKeys() -> Array<String> {
return ["BusinessAffiliationRequest","CountryId","CreateDate","Email","Employee","Id","LegalPerson","LegalRepresentative","NaturalPerson","PersonClassificationId","PersonHasAddress","PersonTypeId","PhonePerson","ReviewOfac","UpdateDate","WebSite"]
}
}

/**
  Business Affiliation Request.
*/
@objc(AL_BusinessAffiliationRequest)
public class AL_BusinessAffiliationRequest : SyedAbsarObjectBase {


/// Business Person Id
var cpBusinessPersonId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Date Request
var cpDateRequest: NSDate?

/// Id
var cpId: CLong?

/// Number Request
var cpNumberRequest: String?

/// Request Has Collection Request
var cpRequestHasCollectionRequest: String?

/// Review Business Affiliation Request
var cpReviewBusinessAffiliationRequest: String?

/// Review Ofac
var cpReviewOfac: String?

/// Status Business Affiliation Request Id
var cpStatusBusinessAffiliationRequestId: String?

/// Update Date
var cpUpdateDate: NSDate?

override static func cpKeys() -> Array<String> {
return ["BusinessPersonId","CreateDate","DateRequest","Id","NumberRequest","RequestHasCollectionRequest","ReviewBusinessAffiliationRequest","ReviewOfac","StatusBusinessAffiliationRequestId","UpdateDate"]
}
}

/**
  Request Has Collection Request.
*/
@objc(AL_RequestHasCollectionRequest)
public class AL_RequestHasCollectionRequest : SyedAbsarObjectBase {


/// Business Affiliation Request Id
var cpBusinessAffiliationRequestId: String?

/// Collections Request Id
var cpCollectionsRequestId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Id
var cpId: CLong?

/// Image File Url
var cpImageFileUrl: String?

/// Ind Approved
var cpIndApproved: CShort?

/// Observations
var cpObservations: String?

/// Update Date
var cpUpdateDate: NSDate?

override static func cpKeys() -> Array<String> {
return ["BusinessAffiliationRequestId","CollectionsRequestId","CreateDate","Id","ImageFileUrl","IndApproved","Observations","UpdateDate"]
}
}

/**
  Collections Request.
*/
@objc(AL_CollectionsRequest)
public class AL_CollectionsRequest : SyedAbsarObjectBase {


/// Collection Type Id
var cpCollectionTypeId: String?

/// Id
var cpId: Int?

/// Person Type Id
var cpPersonTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CollectionTypeId","Id","PersonTypeId"]
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
var cpId: Int?

/// Person Type Id
var cpPersonTypeId: String?

override static func cpKeys() -> Array<String> {
return ["CountryId","Description","Id","PersonTypeId"]
}
}

/**
  Review Business Affiliation Request.
*/
@objc(AL_ReviewBusinessAffiliationRequest)
public class AL_ReviewBusinessAffiliationRequest : SyedAbsarObjectBase {


/// Business Affiliation Request Id
var cpBusinessAffiliationRequestId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Id
var cpId: CLong?

/// Ind Approved
var cpIndApproved: Bool?

/// Observations
var cpObservations: String?

/// Review Date
var cpReviewDate: NSDate?

/// Review Type Id
var cpReviewTypeId: String?

/// Update Date
var cpUpdateDate: NSDate?

/// User Review Id
var cpUserReviewId: String?

override static func cpKeys() -> Array<String> {
return ["BusinessAffiliationRequestId","CreateDate","Id","IndApproved","Observations","ReviewDate","ReviewTypeId","UpdateDate","UserReviewId"]
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
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
}
}

/**
  Review Ofac.
*/
@objc(AL_ReviewOfac)
public class AL_ReviewOfac : SyedAbsarObjectBase {


/// Business Affiliation Request Id
var cpBusinessAffiliationRequestId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Id
var cpId: CLong?

/// Observations
var cpObservations: String?

/// Person Id
var cpPersonId: String?

/// Result Review
var cpResultReview: Float?

/// Update Date
var cpUpdateDate: NSDate?

/// User Review Id
var cpUserReviewId: String?

override static func cpKeys() -> Array<String> {
return ["BusinessAffiliationRequestId","CreateDate","Id","Observations","PersonId","ResultReview","UpdateDate","UserReviewId"]
}
}

/**
  Status Business Affiliation Request.
*/
@objc(AL_StatusBusinessAffiliationRequest)
public class AL_StatusBusinessAffiliationRequest : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Code","Description","Id"]
}
}

/**
  Legal Person.
*/
@objc(AL_LegalPerson)
public class AL_LegalPerson : SyedAbsarObjectBase {


/// Business Category Id
var cpBusinessCategoryId: String?

/// Business Name
var cpBusinessName: String?

/// Create Date
var cpCreateDate: NSDate?

/// Date Inscription Register
var cpDateInscriptionRegister: NSDate?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Id
var cpId: CLong?

/// Identification Number
var cpIdentificationNumber: String?

/// Legal Representative Id
var cpLegalRepresentativeId: String?

/// Payed Capital
var cpPayedCapital: Float?

/// Person Id
var cpPersonId: String?

/// Register Number
var cpRegisterNumber: String?

/// Status Applicant Id
var cpStatusApplicantId: String?

/// Trade Name
var cpTradeName: String?

/// Update Date
var cpUpdateDate: NSDate?

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
var cpId: Int?

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
var cpAge: Int?

/// Civil Status Id
var cpCivilStatusId: String?

/// Create Date
var cpCreateDate: NSDate?

/// Date Birth
var cpDateBirth: NSDate?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: NSDate?

/// First Names
var cpFirstNames: String?

/// Gender
var cpGender: String?

/// Id
var cpId: CLong?

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
var cpUpdateDate: NSDate?

override static func cpKeys() -> Array<String> {
return ["Age","CivilStatusId","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FirstNames","Gender","Id","IdentificationNumber","IdentificationNumberOld","LastNames","PersonId","PlaceBirth","StatusApplicantId","UpdateDate"]
}
}

/**
  Civil Status.
*/
@objc(AL_CivilStatus)
public class AL_CivilStatus : SyedAbsarObjectBase {


/// Description
var cpDescription: String?

/// Id
var cpId: Int?

/// Language Id
var cpLanguageId: String?

override static func cpKeys() -> Array<String> {
return ["Description","Id","LanguageId"]
}
}

/**
  Status Applicant.
*/
@objc(AL_StatusApplicant)
public class AL_StatusApplicant : SyedAbsarObjectBase {


/// Code
var cpCode: String?

/// Description
var cpDescription: String?

/// Id
var cpId: Int?

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
var cpCreateDate: NSDate?

/// Date Birth
var cpDateBirth: NSDate?

/// Documents Person Type Id
var cpDocumentsPersonTypeId: String?

/// Due Date Document Identification
var cpDueDateDocumentIdentification: NSDate?

/// First Name
var cpFirstName: String?

/// Gender
var cpGender: String?

/// Id
var cpId: CLong?

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
var cpUpdateDate: NSDate?

override static func cpKeys() -> Array<String> {
return ["CivilStatusId","CreateDate","DateBirth","DocumentsPersonTypeId","DueDateDocumentIdentification","FirstName","Gender","Id","IdentificactionNumberOld","IdentificationNumber","LastName","MarriedLastName","PersonId","PlaceBirth","ProfessionId","StatusApplicantId","UpdateDate"]
}
}

/**
  Profession.
*/
@objc(AL_Profession)
public class AL_Profession : SyedAbsarObjectBase {


/// Id
var cpId: Int?

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
var cpId: Int?

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
var cpCreateDate: NSDate?

/// Id
var cpId: Int?

/// Person Id
var cpPersonId: String?

/// Update Date
var cpUpdateDate: NSDate?

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
var cpCreateDate: NSDate?

/// Extension Phone Number
var cpExtensionPhoneNumber: String?

/// Id
var cpId: CLong?

/// Ind Main Phone
var cpIndMainPhone: Bool?

/// Number Phone
var cpNumberPhone: String?

/// Person Id
var cpPersonId: String?

/// Phone Type Id
var cpPhoneTypeId: String?

/// Update Date
var cpUpdateDate: NSDate?

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
var cpId: Int?

override static func cpKeys() -> Array<String> {
return ["Description","Id"]
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
var cpId: CLong?

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
var cpNanos: Int?

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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

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
var cpId: CLong?

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
var cpEnabled: Bool?

/// Entity
var cpEntity: String?

/// Id
var cpId: CLong?

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
var cpId: CLong?

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
var cpEnabled: Bool?

/// Id
var cpId: CLong?

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
var cpId: CLong?

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
var cpId: Int?

/// Language
var cpLanguage: String?

/// Profile
var cpProfile: String?

override static func cpKeys() -> Array<String> {
return ["Alias","Description","Id","Language","Profile"]
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
var cpAMLPercent: Float?

/// Additional
var cpAdditional: String?

/// Address Id
var cpAddressId: String?

/// Agent Complient Id
var cpAgentComplientId: Int?

/// Aproved Date
var cpAprovedDate: NSDate?

/// Beginning Date
var cpBeginningDate: NSDate?

/// Complient Status Id
var cpComplientStatusId: String?

/// Ending Date
var cpEndingDate: NSDate?

/// Id
var cpId: CLong?

/// Img Document Date
var cpImgDocumentDate: String?

/// Img Profile
var cpImgProfile: String?

/// Is A M L
var cpIsAML: Bool?

/// Is K Y C
var cpIsKYC: Bool?

/// User Source Id
var cpUserSourceId: CLong?

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
var cpId: CLong?

/// Value
var cpValue: String?

override static func cpKeys() -> Array<String> {
return ["Id","Value"]
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
var cpCommissionPercent: Float?

/// Country
var cpCountry: String?

/// Coutry Id
var cpCoutryId: String?

/// Creation Date
var cpCreationDate: String?

/// Denomination
var cpDenomination: Float?

/// Denomination Receiver
var cpDenominationReceiver: Float?

/// Denomination Sale
var cpDenominationSale: Float?

/// Destination Currency
var cpDestinationCurrency: String?

/// Id
var cpId: CLong?

/// Increment
var cpIncrement: Float?

/// Is Open Range
var cpIsOpenRange: Bool?

/// Maximum Amount
var cpMaximumAmount: Float?

/// Minimum Amount
var cpMinimumAmount: Float?

/// Operatorid
var cpOperatorid: String?

/// Opertador
var cpOpertador: String?

/// Skuid
var cpSkuid: String?

/// Wholesale Price
var cpWholesalePrice: Float?

override static func cpKeys() -> Array<String> {
return ["CommissionPercent","Country","CoutryId","CreationDate","Denomination","DenominationReceiver","DenominationSale","DestinationCurrency","Id","Increment","IsOpenRange","MaximumAmount","MinimumAmount","Operatorid","Opertador","Skuid","WholesalePrice"]
}
}

/**
  Desactivate Card By Business.
*/
@objc(AL_DesactivateCardByBusiness)
public class AL_DesactivateCardByBusiness : SyedAbsarObjectBase {


/// Business Id
var cpBusinessId: CLong?

/// Card
var cpCard: String?

/// Time Zone
var cpTimeZone: String?

override static func cpKeys() -> Array<String> {
return ["BusinessId","Card","TimeZone"]
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
var cpUserId: CLong?

/// Product I D
var cpProductID: CLong?

/// Amount To Recharge
var cpAmountToRecharge: String?

/// Include Fee
var cpIncludeFee: Bool?

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
  Process Remettence Account.
*/
@objc(AL_ProcessRemettenceAccount)
public class AL_ProcessRemettenceAccount : SyedAbsarObjectBase {


/// User Id
var cpUserId: String?

/// Amount Origin
var cpAmountOrigin: Float?

/// Total Amount
var cpTotalAmount: Float?

/// Amount Destiny
var cpAmountDestiny: Float?

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
var cpUserId: CLong?

/// Estado
var cpEstado: String?

/// Ciudad
var cpCiudad: String?

/// Zip Code
var cpZipCode: String?

/// Addres1
var cpAddres1: String?

/// Payment Patner Id
var cpPaymentPatnerId: CLong?

/// Payment Type Id
var cpPaymentTypeId: CLong?

/// Credit Card Type Id
var cpCreditCardTypeId: CLong?

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
var cpBusinessId: CLong?

/// E Card Number
var cpECardNumber: String?

/// Recharge Amount
var cpRechargeAmount: String?

/// Include Fee
var cpIncludeFee: Bool?

override static func cpKeys() -> Array<String> {
return ["BusinessId","ECardNumber","RechargeAmount","IncludeFee"]
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
  Save Transfer Between Account.
*/
@objc(AL_SaveTransferBetweenAccount)
public class AL_SaveTransferBetweenAccount : SyedAbsarObjectBase {


/// Cryptogram User Source
var cpCryptogramUserSource: String?

/// Email User
var cpEmailUser: String?

/// Product Id
var cpProductId: CLong?

/// Amount Transfer
var cpAmountTransfer: Float?

/// Concept Transaction
var cpConceptTransaction: String?

/// Cryptogram User Destination
var cpCryptogramUserDestination: String?

/// Id User Destination
var cpIdUserDestination: CLong?

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
  Has Prepay Card Asociated.
*/
@objc(AL_HasPrepayCardAsociated)
public class AL_HasPrepayCardAsociated : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

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
var cpReturn: Bool?

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
var cpTaxInclude: Bool?

/// Status
var cpStatus: Bool?

/// Reference Code
var cpReferenceCode: String?

/// Rate Url
var cpRateUrl: String?

/// Acces Number Url
var cpAccesNumberUrl: String?

/// Is Free
var cpIsFree: Bool?

/// Is Alocashproduct
var cpIsAlocashproduct: Bool?

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
  Card Response.
*/
@objc(AL_CardResponse)
public class AL_CardResponse : SyedAbsarObjectBase {


/// Card
var cpCard: String?

/// Number Card
var cpNumberCard: String?

override static func cpKeys() -> Array<String> {
return ["Card","NumberCard"]
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
var cpProductSourceId: CLong?

/// Product Destination Id
var cpProductDestinationId: CLong?

/// Amount Exchange
var cpAmountExchange: Float?

/// Included Amount
var cpIncludedAmount: Int?

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
var cpBankId: CLong?

/// Email User
var cpEmailUser: String?

/// Account Bank
var cpAccountBank: String?

/// Amount Withdrawal
var cpAmountWithdrawal: Float?

/// Product Id
var cpProductId: CLong?

/// Concept Transaction
var cpConceptTransaction: String?

override static func cpKeys() -> Array<String> {
return ["BankId","EmailUser","AccountBank","AmountWithdrawal","ProductId","ConceptTransaction"]
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
var cpBusinessId: CLong?

/// User Id
var cpUserId: CLong?

/// Product Id
var cpProductId: CLong?

/// Amount To Recharge
var cpAmountToRecharge: String?

/// Include Fee
var cpIncludeFee: Bool?

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
  Has Prepay Card.
*/
@objc(AL_HasPrepayCard)
public class AL_HasPrepayCard : SyedAbsarObjectBase {


/// User Id
var cpUserId: CLong?

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
var cpReturn: Bool?

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



