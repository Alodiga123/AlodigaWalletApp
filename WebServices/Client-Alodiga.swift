 
/* 
Copyright (c) 2021 Syed Absar Karim https://www.linkedin.com/in/syedabsar

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
 
import Foundation

/* Soap Client Generated from WSDL: http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService?wsdl powered by http://www.wsdl2swift.com */

public class AlodigaClient {
    
    
    let webServiceCall = WebServicesCall()


/**
    Calls the SOAP Operation: SendSMS with Message based on SendSMS Object.

    - parameter sendSMS:  SendSMS Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSendSMS(sendSMS: AL_SendSMS , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:sendSMS><movil>%@</movil><message>%@</message></ns1:sendSMS></SOAP-ENV:Body></SOAP-ENV:Envelope>",sendSMS.cpMovil!,sendSMS.cpMessage!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendSMSResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: GetPaymentInfo with Message based on GetPaymentInfo Object.

    - parameter getPaymentInfo:  GetPaymentInfo Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetPaymentInfo(getPaymentInfo: AL_GetPaymentInfo , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getPaymentInfo><userApi>%@</userApi><passwordApi>%@</passwordApi><userId>%@</userId></ns1:getPaymentInfo></SOAP-ENV:Body></SOAP-ENV:Envelope>",getPaymentInfo.cpUserApi!,getPaymentInfo.cpPasswordApi!,getPaymentInfo.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetPaymentInfoResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
 }

    
/**
    Calls the SOAP Operation: ExchangeProduct with Message based on ExchangeProduct Object.

    - parameter exchangeProduct:  ExchangeProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opExchangeProduct(exchangeProduct: AL_ExchangeProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:exchangeProduct><emailUser>%@</emailUser><productSourceId>%@</productSourceId><productDestinationId>%@</productDestinationId><amountExchange>%@</amountExchange><conceptTransaction>%@</conceptTransaction><includedAmount>%@</includedAmount></ns1:exchangeProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",exchangeProduct.cpEmailUser!,exchangeProduct.cpProductSourceId!,exchangeProduct.cpProductDestinationId!,exchangeProduct.cpAmountExchange!,exchangeProduct.cpConceptTransaction!,exchangeProduct.cpIncludedAmount!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ExchangeProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
 }

/**
    Calls the SOAP Operation: GetBankApp with Message based on GetBankApp Object.

    - parameter getBankApp:  GetBankApp Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetBankApp(getBankApp: AL_GetBankApp , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getBankApp/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBankAppResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: GetBankByUser with Message based on GetBankByUser Object.

    - parameter getBankByUser:  GetBankByUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetBankByUser(getBankByUser: AL_GetBankByUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getBankByUser><userId>%@</userId></ns1:getBankByUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",getBankByUser.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBankByUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
 }

/**
    Calls the SOAP Operation: SavePaymentShop with Message based on SavePaymentShop Object.

    - parameter savePaymentShop:  SavePaymentShop Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSavePaymentShop(savePaymentShop: AL_SavePaymentShop , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:savePaymentShop><cryptogramaShop>%@</cryptogramaShop><emailUser>%@</emailUser><productId>%@</productId><amountPayment>%@</amountPayment><conceptTransaction>%@</conceptTransaction></ns1:savePaymentShop></SOAP-ENV:Body></SOAP-ENV:Envelope>",savePaymentShop.cpCryptogramaShop!,savePaymentShop.cpEmailUser!,savePaymentShop.cpProductId!,savePaymentShop.cpAmountPayment!,savePaymentShop.cpConceptTransaction!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SavePaymentShopResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: GetCardsListByUserId with Message based on GetCardsListByUserId Object.

    - parameter getCardsListByUserId:  GetCardsListByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCardsListByUserId(getCardsListByUserId: AL_GetCardsListByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCardsListByUserId><userId>%@</userId></ns1:getCardsListByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCardsListByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCardsListByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ProcessRemettenceAccount with Message based on ProcessRemettenceAccount Object.

    - parameter processRemettenceAccount:  ProcessRemettenceAccount Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opProcessRemettenceAccount(processRemettenceAccount: AL_ProcessRemettenceAccount , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:processRemettenceAccount><userId>%@</userId><amountOrigin>%@</amountOrigin><totalAmount>%@</totalAmount><amountDestiny>%@</amountDestiny><exchangeRateId>%@</exchangeRateId><ratePaymentNetworkId>%@</ratePaymentNetworkId><originCurrentId>%@</originCurrentId><destinyCurrentId>%@</destinyCurrentId><paymentNetworkId>%@</paymentNetworkId><deliveryFormId>%@</deliveryFormId><addressId>%@</addressId><remittentCountryId>%@</remittentCountryId><remittentStateName>%@</remittentStateName><remittentCityName>%@</remittentCityName><remittentAddress>%@</remittentAddress><remittentZipCode>%@</remittentZipCode><remittentStateId>%@</remittentStateId><remittentCityId>%@</remittentCityId><receiverFirstName>%@</receiverFirstName><receiverMiddleName>%@</receiverMiddleName><receiverLastName>%@</receiverLastName><receiverSecondSurname>%@</receiverSecondSurname><receiverPhoneNumber>%@</receiverPhoneNumber><receiverEmail>%@</receiverEmail><receiverCountryId>%@</receiverCountryId><receiverCityId>%@</receiverCityId><receiverStateId>%@</receiverStateId><receiverStateName>%@</receiverStateName><receiverCityName>%@</receiverCityName><receiverAddress>%@</receiverAddress><receiverZipCode>%@</receiverZipCode><languageId>%@</languageId></ns1:processRemettenceAccount></SOAP-ENV:Body></SOAP-ENV:Envelope>",processRemettenceAccount.cpUserId!,processRemettenceAccount.cpAmountOrigin!,processRemettenceAccount.cpTotalAmount!,processRemettenceAccount.cpAmountDestiny!,processRemettenceAccount.cpExchangeRateId!,processRemettenceAccount.cpRatePaymentNetworkId!,processRemettenceAccount.cpOriginCurrentId!,processRemettenceAccount.cpDestinyCurrentId!,processRemettenceAccount.cpPaymentNetworkId!,processRemettenceAccount.cpDeliveryFormId!,processRemettenceAccount.cpAddressId!,processRemettenceAccount.cpRemittentCountryId!,processRemettenceAccount.cpRemittentStateName!,processRemettenceAccount.cpRemittentCityName!,processRemettenceAccount.cpRemittentAddress!,processRemettenceAccount.cpRemittentZipCode!,processRemettenceAccount.cpRemittentStateId!,processRemettenceAccount.cpRemittentCityId!,processRemettenceAccount.cpReceiverFirstName!,processRemettenceAccount.cpReceiverMiddleName!,processRemettenceAccount.cpReceiverLastName!,processRemettenceAccount.cpReceiverSecondSurname!,processRemettenceAccount.cpReceiverPhoneNumber!,processRemettenceAccount.cpReceiverEmail!,processRemettenceAccount.cpReceiverCountryId!,processRemettenceAccount.cpReceiverCityId!,processRemettenceAccount.cpReceiverStateId!,processRemettenceAccount.cpReceiverStateName!,processRemettenceAccount.cpReceiverCityName!,processRemettenceAccount.cpReceiverAddress!,processRemettenceAccount.cpReceiverZipCode!,processRemettenceAccount.cpLanguageId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ProcessRemettenceAccountResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveTransferBetweenBusinessWithUser with Message based on SaveTransferBetweenBusinessWithUser Object.

    - parameter saveTransferBetweenBusinessWithUser:  SaveTransferBetweenBusinessWithUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveTransferBetweenBusinessWithUser(saveTransferBetweenBusinessWithUser: AL_SaveTransferBetweenBusinessWithUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveTransferBetweenBusinessWithUser><productId>%@</productId><amountTransfer>%@</amountTransfer><conceptTransaction>%@</conceptTransaction><idUserDestination>%@</idUserDestination><businessId>%@</businessId></ns1:saveTransferBetweenBusinessWithUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveTransferBetweenBusinessWithUser.cpProductId!,saveTransferBetweenBusinessWithUser.cpAmountTransfer!,saveTransferBetweenBusinessWithUser.cpConceptTransaction!,saveTransferBetweenBusinessWithUser.cpIdUserDestination!,saveTransferBetweenBusinessWithUser.cpBusinessId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveTransferBetweenBusinessWithUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: CheckStatusCard with Message based on CheckStatusCard Object.

    - parameter checkStatusCard:  CheckStatusCard Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opCheckStatusCard(checkStatusCard: AL_CheckStatusCard , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:checkStatusCard><email>%@</email><timeZone>%@</timeZone></ns1:checkStatusCard></SOAP-ENV:Body></SOAP-ENV:Envelope>",checkStatusCard.cpEmail!,checkStatusCard.cpTimeZone!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CheckStatusCardResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetAccountTypeBank with Message based on GetAccountTypeBank Object.

    - parameter getAccountTypeBank:  GetAccountTypeBank Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetAccountTypeBank(getAccountTypeBank: AL_GetAccountTypeBank , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getAccountTypeBank/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetAccountTypeBankResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: SaveTransferBetweenBusinessAccount with Message based on SaveTransferBetweenBusinessAccount Object.

    - parameter saveTransferBetweenBusinessAccount:  SaveTransferBetweenBusinessAccount Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveTransferBetweenBusinessAccount(saveTransferBetweenBusinessAccount: AL_SaveTransferBetweenBusinessAccount , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveTransferBetweenBusinessAccount><productId>%@</productId><amountTransfer>%@</amountTransfer><conceptTransaction>%@</conceptTransaction><businessId>%@</businessId><businessDestinationId>%@</businessDestinationId></ns1:saveTransferBetweenBusinessAccount></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveTransferBetweenBusinessAccount.cpProductId!,saveTransferBetweenBusinessAccount.cpAmountTransfer!,saveTransferBetweenBusinessAccount.cpConceptTransaction!,saveTransferBetweenBusinessAccount.cpBusinessId!,saveTransferBetweenBusinessAccount.cpBusinessDestinationId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveTransferBetweenBusinessAccountResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ActivateCardbyBusiness with Message based on ActivateCardbyBusiness Object.

    - parameter activateCardbyBusiness:  ActivateCardbyBusiness Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opActivateCardbyBusiness(activateCardbyBusiness: AL_ActivateCardbyBusiness , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:activateCardbyBusiness><businessId>%@</businessId><userEmail>%@</userEmail><timeZone>%@</timeZone></ns1:activateCardbyBusiness></SOAP-ENV:Body></SOAP-ENV:Envelope>",activateCardbyBusiness.cpBusinessId!,activateCardbyBusiness.cpUserEmail!,activateCardbyBusiness.cpTimeZone!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ActivateCardbyBusinessResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: DesactivateCardByBusiness with Message based on DesactivateCardByBusiness Object.

    - parameter desactivateCardByBusiness:  DesactivateCardByBusiness Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opDesactivateCardByBusiness(desactivateCardByBusiness: AL_DesactivateCardByBusiness , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:desactivateCardByBusiness><businessId>%@</businessId><userEmail>%@</userEmail><timeZone>%@</timeZone></ns1:desactivateCardByBusiness></SOAP-ENV:Body></SOAP-ENV:Envelope>",desactivateCardByBusiness.cpBusinessId!,desactivateCardByBusiness.cpUserEmail!,desactivateCardByBusiness.cpTimeZone!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"DesactivateCardByBusinessResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: CheckStatusAccount with Message based on CheckStatusAccount Object.

    - parameter checkStatusAccount:  CheckStatusAccount Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opCheckStatusAccount(checkStatusAccount: AL_CheckStatusAccount , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:checkStatusAccount><userId>%@</userId><card>%@</card><timeZone>%@</timeZone></ns1:checkStatusAccount></SOAP-ENV:Body></SOAP-ENV:Envelope>",checkStatusAccount.cpUserId!,checkStatusAccount.cpCard!,checkStatusAccount.cpTimeZone!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CheckStatusAccountResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ValidateRechargeCard with Message based on ValidateRechargeCard Object.

    - parameter validateRechargeCard:  ValidateRechargeCard Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opValidateRechargeCard(validateRechargeCard: AL_ValidateRechargeCard , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:validateRechargeCard><rechargeAmount>%@</rechargeAmount><includeFee>true</includeFee></ns1:validateRechargeCard></SOAP-ENV:Body></SOAP-ENV:Envelope>",validateRechargeCard.cpRechargeAmount!,validateRechargeCard.cpIncludeFee!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ValidateRechargeCardResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: RechargeCard with Message based on RechargeCard Object.

    - parameter rechargeCard:  RechargeCard Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRechargeCard(rechargeCard: AL_RechargeCard , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:rechargeCard><businessId>%@</businessId><userEmail>%@</userEmail><rechargeAmount>%@</rechargeAmount><includeFee>true</includeFee></ns1:rechargeCard></SOAP-ENV:Body></SOAP-ENV:Envelope>",rechargeCard.cpBusinessId!,rechargeCard.cpUserEmail!,rechargeCard.cpRechargeAmount!,rechargeCard.cpIncludeFee!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RechargeCardResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ManualWithdrawalsBusiness with Message based on ManualWithdrawalsBusiness Object.

    - parameter manualWithdrawalsBusiness:  ManualWithdrawalsBusiness Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opManualWithdrawalsBusiness(manualWithdrawalsBusiness: AL_ManualWithdrawalsBusiness , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:manualWithdrawalsBusiness><bankId>%@</bankId><accountBankBusinessId>%@</accountBankBusinessId><accountBank>%@</accountBank><amountWithdrawal>%@</amountWithdrawal><productId>%@</productId><conceptTransaction>%@</conceptTransaction><businessId>%@</businessId><businessTransactionId>%@</businessTransactionId></ns1:manualWithdrawalsBusiness></SOAP-ENV:Body></SOAP-ENV:Envelope>",manualWithdrawalsBusiness.cpBankId!,manualWithdrawalsBusiness.cpAccountBankBusinessId!,manualWithdrawalsBusiness.cpAccountBank!,manualWithdrawalsBusiness.cpAmountWithdrawal!,manualWithdrawalsBusiness.cpProductId!,manualWithdrawalsBusiness.cpConceptTransaction!,manualWithdrawalsBusiness.cpBusinessId!,manualWithdrawalsBusiness.cpBusinessTransactionId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ManualWithdrawalsBusinessResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetProductsByUserId with Message based on GetProductsByUserId Object.

    - parameter getProductsByUserId:  GetProductsByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsByUserId(getProductsByUserId: AL_GetProductsByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsByUserId><userId>%@</userId></ns1:getProductsByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: ValidateRechargeProduct with Message based on ValidateRechargeProduct Object.

    - parameter validateRechargeProduct:  ValidateRechargeProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opValidateRechargeProduct(validateRechargeProduct: AL_ValidateRechargeProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:validateRechargeProduct><userId>%@</userId><productID>%@</productID><amountToRecharge>%@</amountToRecharge><includeFee>true</includeFee></ns1:validateRechargeProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",validateRechargeProduct.cpUserId!,validateRechargeProduct.cpProductID!,validateRechargeProduct.cpAmountToRecharge!,validateRechargeProduct.cpIncludeFee!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ValidateRechargeProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: RechargeWalletProduct with Message based on RechargeWalletProduct Object.

    - parameter rechargeWalletProduct:  RechargeWalletProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRechargeWalletProduct(rechargeWalletProduct: AL_RechargeWalletProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:rechargeWalletProduct><businessId>%@</businessId><userId>%@</userId><productId>%@</productId><amountToRecharge>%@</amountToRecharge><includeFee>true</includeFee></ns1:rechargeWalletProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",rechargeWalletProduct.cpBusinessId!,rechargeWalletProduct.cpUserId!,rechargeWalletProduct.cpProductId!,rechargeWalletProduct.cpAmountToRecharge!,rechargeWalletProduct.cpIncludeFee!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RechargeWalletProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetBalanceHistoryByProductAndBusinessId with Message based on GetBalanceHistoryByProductAndBusinessId Object.

    - parameter getBalanceHistoryByProductAndBusinessId:  GetBalanceHistoryByProductAndBusinessId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetBalanceHistoryByProductAndBusinessId(getBalanceHistoryByProductAndBusinessId: AL_GetBalanceHistoryByProductAndBusinessId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getBalanceHistoryByProductAndBusinessId><businessId>%@</businessId><productId>%@</productId></ns1:getBalanceHistoryByProductAndBusinessId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getBalanceHistoryByProductAndBusinessId.cpBusinessId!,getBalanceHistoryByProductAndBusinessId.cpProductId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBalanceHistoryByProductAndBusinessIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetTransactionsByBusinessIdBetweenDate with Message based on GetTransactionsByBusinessIdBetweenDate Object.

    - parameter getTransactionsByBusinessIdBetweenDate:  GetTransactionsByBusinessIdBetweenDate Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetTransactionsByBusinessIdBetweenDate(getTransactionsByBusinessIdBetweenDate: AL_GetTransactionsByBusinessIdBetweenDate , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getTransactionsByBusinessIdBetweenDate><businessId>%@</businessId><from>%@</from><to>%@</to></ns1:getTransactionsByBusinessIdBetweenDate></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTransactionsByBusinessIdBetweenDate.cpBusinessId!,getTransactionsByBusinessIdBetweenDate.cpFrom!,getTransactionsByBusinessIdBetweenDate.cpTo!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTransactionsByBusinessIdBetweenDateResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ActivateCard with Message based on ActivateCard Object.

    - parameter activateCard:  ActivateCard Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opActivateCard(activateCard: AL_ActivateCard , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:activateCard><email>%@</email><timeZone>%@</timeZone><status>%@</status></ns1:activateCard></SOAP-ENV:Body></SOAP-ENV:Envelope>",activateCard.cpEmail!,activateCard.cpTimeZone!,activateCard.cpStatus!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ActivateCardResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveTransferBetweenAccount with Message based on SaveTransferBetweenAccount Object.

    - parameter saveTransferBetweenAccount:  SaveTransferBetweenAccount Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveTransferBetweenAccount(saveTransferBetweenAccount: AL_SaveTransferBetweenAccount , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveTransferBetweenAccount><cryptogramUserSource>%@</cryptogramUserSource><emailUser>%@</emailUser><productId>%@</productId><amountTransfer>%@</amountTransfer><conceptTransaction>%@</conceptTransaction><cryptogramUserDestination>%@</cryptogramUserDestination><idUserDestination>%@</idUserDestination></ns1:saveTransferBetweenAccount></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveTransferBetweenAccount.cpCryptogramUserSource!,saveTransferBetweenAccount.cpEmailUser!,saveTransferBetweenAccount.cpProductId!,saveTransferBetweenAccount.cpAmountTransfer!,saveTransferBetweenAccount.cpConceptTransaction!,saveTransferBetweenAccount.cpCryptogramUserDestination!,saveTransferBetweenAccount.cpIdUserDestination!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveTransferBetweenAccountResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetProductsByBankId with Message based on GetProductsByBankId Object.

    - parameter getProductsByBankId:  GetProductsByBankId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsByBankId(getProductsByBankId: AL_GetProductsByBankId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsByBankId><bankId>%@</bankId><userId>%@</userId></ns1:getProductsByBankId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsByBankId.cpBankId!,getProductsByBankId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsByBankIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: GetProductsRemettenceByUserId with Message based on GetProductsRemettenceByUserId Object.

    - parameter getProductsRemettenceByUserId:  GetProductsRemettenceByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsRemettenceByUserId(getProductsRemettenceByUserId: AL_GetProductsRemettenceByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsRemettenceByUserId><userId>%@</userId></ns1:getProductsRemettenceByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsRemettenceByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsRemettenceByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCountriesHasBank with Message based on GetCountriesHasBank Object.

    - parameter getCountriesHasBank:  GetCountriesHasBank Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCountriesHasBank(getCountriesHasBank: AL_GetCountriesHasBank , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCountriesHasBank><userId>%@</userId></ns1:getCountriesHasBank></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCountriesHasBank.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCountriesHasBankResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetValidateCollection with Message based on GetValidateCollection Object.

    - parameter getValidateCollection:  GetValidateCollection Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetValidateCollection(getValidateCollection: AL_GetValidateCollection , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getValidateCollection><userId>%@</userId><language>%@</language></ns1:getValidateCollection></SOAP-ENV:Body></SOAP-ENV:Envelope>",getValidateCollection.cpUserId!,getValidateCollection.cpLanguage!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetValidateCollectionResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveUserHasProduct with Message based on SaveUserHasProduct Object.

    - parameter saveUserHasProduct:  SaveUserHasProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveUserHasProduct(saveUserHasProduct: AL_SaveUserHasProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveUserHasProduct><userId>%@</userId><productId>%@</productId></ns1:saveUserHasProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveUserHasProduct.cpUserId!,saveUserHasProduct.cpProductId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveUserHasProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ManualWithdrawals with Message based on ManualWithdrawals Object.

    - parameter manualWithdrawals:  ManualWithdrawals Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opManualWithdrawals(manualWithdrawals: AL_ManualWithdrawals , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:manualWithdrawals><bankId>%@</bankId><emailUser>%@</emailUser><amountWithdrawal>%@</amountWithdrawal><productId>%@</productId><conceptTransaction>%@</conceptTransaction><documentTypeId>%@</documentTypeId><originApplicationId>%@</originApplicationId></ns1:manualWithdrawals></SOAP-ENV:Body></SOAP-ENV:Envelope>",manualWithdrawals.cpBankId!,manualWithdrawals.cpEmailUser!,manualWithdrawals.cpAmountWithdrawal!,manualWithdrawals.cpProductId!,manualWithdrawals.cpConceptTransaction!,manualWithdrawals.cpDocumentTypeId!,manualWithdrawals.cpOriginApplicationId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ManualWithdrawalsResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: SaveRechargeTopUp with Message based on SaveRechargeTopUp Object.

    - parameter saveRechargeTopUp:  SaveRechargeTopUp Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveRechargeTopUp(saveRechargeTopUp: AL_SaveRechargeTopUp , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveRechargeTopUp><emailUser>%@</emailUser><productId>%@</productId><cryptogramUser>%@</cryptogramUser><skudId>%@</skudId><destinationNumber>%@</destinationNumber><senderNumber>%@</senderNumber><amountRecharge>%@</amountRecharge><amountPayment>%@</amountPayment><language>%@</language></ns1:saveRechargeTopUp></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveRechargeTopUp.cpEmailUser!,saveRechargeTopUp.cpProductId!,saveRechargeTopUp.cpCryptogramUser!,saveRechargeTopUp.cpSkudId!,saveRechargeTopUp.cpDestinationNumber!,saveRechargeTopUp.cpSenderNumber!,saveRechargeTopUp.cpAmountRecharge!,saveRechargeTopUp.cpAmountPayment!,saveRechargeTopUp.cpLanguage!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveRechargeTopUpResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetTopUpCountries with Message based on GetTopUpCountries Object.

    - parameter getTopUpCountries:  GetTopUpCountries Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetTopUpCountries(getTopUpCountries: AL_GetTopUpCountries , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getTopUpCountries/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTopUpCountriesResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: TopUpList with Message based on TopUpList Object.

    - parameter topUpList:  TopUpList Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opTopUpList(topUpList: AL_TopUpList , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:topUpList><receiverNumber>%@</receiverNumber><phoneNumber>%@</phoneNumber></ns1:topUpList></SOAP-ENV:Body></SOAP-ENV:Envelope>",topUpList.cpReceiverNumber!,topUpList.cpPhoneNumber!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"TopUpListResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
 }

/**
    Calls the SOAP Operation: GetProductPrepaidCardByUser with Message based on GetProductPrepaidCardByUser Object.

    - parameter getProductPrepaidCardByUser:  GetProductPrepaidCardByUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductPrepaidCardByUser(getProductPrepaidCardByUser: AL_GetProductPrepaidCardByUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductPrepaidCardByUser><userId>%@</userId></ns1:getProductPrepaidCardByUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductPrepaidCardByUser.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductPrepaidCardByUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetBankByCountryApp with Message based on GetBankByCountryApp Object.

    - parameter getBankByCountryApp:  GetBankByCountryApp Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetBankByCountryApp(getBankByCountryApp: AL_GetBankByCountryApp , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getBankByCountryApp><countryId>%@</countryId></ns1:getBankByCountryApp></SOAP-ENV:Body></SOAP-ENV:Envelope>",getBankByCountryApp.cpCountryId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBankByCountryAppResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: GetTransactionsByUserIdApp with Message based on GetTransactionsByUserIdApp Object.

    - parameter getTransactionsByUserIdApp:  GetTransactionsByUserIdApp Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetTransactionsByUserIdApp(getTransactionsByUserIdApp: AL_GetTransactionsByUserIdApp , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getTransactionsByUserIdApp><userId>%@</userId><maxResult>%@</maxResult></ns1:getTransactionsByUserIdApp></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTransactionsByUserIdApp.cpUserId!,getTransactionsByUserIdApp.cpMaxResult!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTransactionsByUserIdAppResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: TransferCardToCardAutorization with Message based on TransferCardToCardAutorization Object.

    - parameter transferCardToCardAutorization:  TransferCardToCardAutorization Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opTransferCardToCardAutorization(transferCardToCardAutorization: AL_TransferCardToCardAutorization , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:transferCardToCardAutorization><userId>%@</userId><numberCardOrigin>%@</numberCardOrigin><numberCardDestinate>%@</numberCardDestinate><balance>%@</balance><idUserDestination>%@</idUserDestination><conceptTransaction>%@</conceptTransaction></ns1:transferCardToCardAutorization></SOAP-ENV:Body></SOAP-ENV:Envelope>",transferCardToCardAutorization.cpUserId!,transferCardToCardAutorization.cpNumberCardOrigin!,transferCardToCardAutorization.cpNumberCardDestinate!,transferCardToCardAutorization.cpBalance!,transferCardToCardAutorization.cpIdUserDestination!,transferCardToCardAutorization.cpConceptTransaction!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"TransferCardToCardAutorizationResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: PreviewExchangeProduct with Message based on PreviewExchangeProduct Object.

    - parameter previewExchangeProduct:  PreviewExchangeProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opPreviewExchangeProduct(previewExchangeProduct: AL_PreviewExchangeProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:previewExchangeProduct><emailUser>%@</emailUser><productSourceId>%@</productSourceId><productDestinationId>%@</productDestinationId><amountExchange>%@</amountExchange><includedAmount>%@</includedAmount></ns1:previewExchangeProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",previewExchangeProduct.cpEmailUser!,previewExchangeProduct.cpProductSourceId!,previewExchangeProduct.cpProductDestinationId!,previewExchangeProduct.cpAmountExchange!,previewExchangeProduct.cpIncludedAmount!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"PreviewExchangeProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: GetProductsPayTopUpByUserId with Message based on GetProductsPayTopUpByUserId Object.

    - parameter getProductsPayTopUpByUserId:  GetProductsPayTopUpByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsPayTopUpByUserId(getProductsPayTopUpByUserId: AL_GetProductsPayTopUpByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsPayTopUpByUserId><userId>%@</userId></ns1:getProductsPayTopUpByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsPayTopUpByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsPayTopUpByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: RetriveTransactionPlaid with Message based on RetriveTransactionPlaid Object.

    - parameter retriveTransactionPlaid:  RetriveTransactionPlaid Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRetriveTransactionPlaid(retriveTransactionPlaid: AL_RetriveTransactionPlaid , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:retriveTransactionPlaid/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RetriveTransactionPlaidResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: BalanceInquiryWithoutMovements with Message based on BalanceInquiryWithoutMovements Object.

    - parameter balanceInquiryWithoutMovements:  BalanceInquiryWithoutMovements Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opBalanceInquiryWithoutMovements(balanceInquiryWithoutMovements: AL_BalanceInquiryWithoutMovements , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:balanceInquiryWithoutMovements><email>%@</email></ns1:balanceInquiryWithoutMovements></SOAP-ENV:Body></SOAP-ENV:Envelope>",balanceInquiryWithoutMovements.cpEmail!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"BalanceInquiryWithoutMovementsResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveRechargeAfinitas with Message based on SaveRechargeAfinitas Object.

    - parameter saveRechargeAfinitas:  SaveRechargeAfinitas Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveRechargeAfinitas(saveRechargeAfinitas: AL_SaveRechargeAfinitas , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveRechargeAfinitas><userId>%@</userId><amountRecharge>%@</amountRecharge><currency>%@</currency><cardNumber>%@</cardNumber><expirationYear>%@</expirationYear><expirationMonth>%@</expirationMonth><cvv>%@</cvv><cardHolderName>%@</cardHolderName><paymentInfoId>%@</paymentInfoId></ns1:saveRechargeAfinitas></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveRechargeAfinitas.cpUserId!,saveRechargeAfinitas.cpAmountRecharge!,saveRechargeAfinitas.cpCurrency!,saveRechargeAfinitas.cpCardNumber!,saveRechargeAfinitas.cpExpirationYear!,saveRechargeAfinitas.cpExpirationMonth!,saveRechargeAfinitas.cpCvv!,saveRechargeAfinitas.cpCardHolderName!,saveRechargeAfinitas.cpPaymentInfoId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveRechargeAfinitasResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveBusinessHasProductDefault with Message based on SaveBusinessHasProductDefault Object.

    - parameter saveBusinessHasProductDefault:  SaveBusinessHasProductDefault Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveBusinessHasProductDefault(saveBusinessHasProductDefault: AL_SaveBusinessHasProductDefault , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveBusinessHasProductDefault><businessId>%@</businessId></ns1:saveBusinessHasProductDefault></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveBusinessHasProductDefault.cpBusinessId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveBusinessHasProductDefaultResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: BalanceInquiryWithMovements with Message based on BalanceInquiryWithMovements Object.

    - parameter balanceInquiryWithMovements:  BalanceInquiryWithMovements Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opBalanceInquiryWithMovements(balanceInquiryWithMovements: AL_BalanceInquiryWithMovements , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:balanceInquiryWithMovements><email>%@</email></ns1:balanceInquiryWithMovements></SOAP-ENV:Body></SOAP-ENV:Envelope>",balanceInquiryWithMovements.cpEmail!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"BalanceInquiryWithMovementsResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveAccountBankUser with Message based on SaveAccountBankUser Object.

    - parameter saveAccountBankUser:  SaveAccountBankUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveAccountBankUser(saveAccountBankUser: AL_SaveAccountBankUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveAccountBankUser><bankId>%@</bankId><unifiedRegistryId>%@</unifiedRegistryId><accountNumber>%@</accountNumber><accountTypeBankId>%@</accountTypeBankId></ns1:saveAccountBankUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveAccountBankUser.cpBankId!,saveAccountBankUser.cpUnifiedRegistryId!,saveAccountBankUser.cpAccountNumber!,saveAccountBankUser.cpAccountTypeBankId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveAccountBankUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetStatusTransactionAprove with Message based on GetStatusTransactionAprove Object.

    - parameter getStatusTransactionAprove:  GetStatusTransactionAprove Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetStatusTransactionAprove(getStatusTransactionAprove: AL_GetStatusTransactionAprove , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getStatusTransactionAprove><status>%@</status></ns1:getStatusTransactionAprove></SOAP-ENV:Body></SOAP-ENV:Envelope>",getStatusTransactionAprove.cpStatus!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetStatusTransactionAproveResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: RetriveBalancePlaid with Message based on RetriveBalancePlaid Object.

    - parameter retriveBalancePlaid:  RetriveBalancePlaid Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRetriveBalancePlaid(retriveBalancePlaid: AL_RetriveBalancePlaid , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:retriveBalancePlaid/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RetriveBalancePlaidResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: RetriveIdentityPlaid with Message based on RetriveIdentityPlaid Object.

    - parameter retriveIdentityPlaid:  RetriveIdentityPlaid Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRetriveIdentityPlaid(retriveIdentityPlaid: AL_RetriveIdentityPlaid , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:retriveIdentityPlaid/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RetriveIdentityPlaidResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: RetriveIncomePlaid with Message based on RetriveIncomePlaid Object.

    - parameter retriveIncomePlaid:  RetriveIncomePlaid Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRetriveIncomePlaid(retriveIncomePlaid: AL_RetriveIncomePlaid , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:retriveIncomePlaid/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RetriveIncomePlaidResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: DispertionTransfer with Message based on DispertionTransfer Object.

    - parameter dispertionTransfer:  DispertionTransfer Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opDispertionTransfer(dispertionTransfer: AL_DispertionTransfer , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:dispertionTransfer><email>%@</email><amountRecharge>%@</amountRecharge><productId>%@</productId></ns1:dispertionTransfer></SOAP-ENV:Body></SOAP-ENV:Envelope>",dispertionTransfer.cpEmail!,dispertionTransfer.cpAmountRecharge!,dispertionTransfer.cpProductId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"DispertionTransferResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCreditCardType with Message based on GetCreditCardType Object.

    - parameter getCreditCardType:  GetCreditCardType Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCreditCardType(getCreditCardType: AL_GetCreditCardType , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCreditCardType><userApi>%@</userApi><passwordApi>%@</passwordApi></ns1:getCreditCardType></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCreditCardType.cpUserApi!,getCreditCardType.cpPasswordApi!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCreditCardTypeResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )-> Void in completionHandler( syedabsarObj  ,error) })
 }

/**
    Calls the SOAP Operation: GetTransactionsByBusinessId with Message based on GetTransactionsByBusinessId Object.

    - parameter getTransactionsByBusinessId:  GetTransactionsByBusinessId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetTransactionsByBusinessId(getTransactionsByBusinessId: AL_GetTransactionsByBusinessId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getTransactionsByBusinessId><businessId>%@</businessId><maxResult>%@</maxResult></ns1:getTransactionsByBusinessId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTransactionsByBusinessId.cpBusinessId!,getTransactionsByBusinessId.cpMaxResult!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTransactionsByBusinessIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveAffiliationRequestUserWallet with Message based on SaveAffiliationRequestUserWallet Object.

    - parameter saveAffiliationRequestUserWallet:  SaveAffiliationRequestUserWallet Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveAffiliationRequestUserWallet(saveAffiliationRequestUserWallet: AL_SaveAffiliationRequestUserWallet , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveAffiliationRequestUserWallet><userId>%@</userId><countryId>%@</countryId><zipCode>%@</zipCode><addressLine1>%@</addressLine1><addressLine2>%@</addressLine2><imgDocumentIdetification>JUA=</imgDocumentIdetification><imgProfile>JUA=</imgProfile></ns1:saveAffiliationRequestUserWallet></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveAffiliationRequestUserWallet.cpUserId!,saveAffiliationRequestUserWallet.cpCountryId!,saveAffiliationRequestUserWallet.cpZipCode!,saveAffiliationRequestUserWallet.cpAddressLine1!,saveAffiliationRequestUserWallet.cpAddressLine2!,saveAffiliationRequestUserWallet.cpImgDocumentIdetification!,saveAffiliationRequestUserWallet.cpImgProfile!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveAffiliationRequestUserWalletResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: LimitAdvance with Message based on LimitAdvance Object.

    - parameter limitAdvance:  LimitAdvance Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opLimitAdvance(limitAdvance: AL_LimitAdvance , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:limitAdvance><email>%@</email><amountWithdrawal>%@</amountWithdrawal><productId>%@</productId></ns1:limitAdvance></SOAP-ENV:Body></SOAP-ENV:Envelope>",limitAdvance.cpEmail!,limitAdvance.cpAmountWithdrawal!,limitAdvance.cpProductId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LimitAdvanceResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SendSmsSimbox with Message based on SendSmsSimbox Object.

    - parameter sendSmsSimbox:  SendSmsSimbox Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSendSmsSimbox(sendSmsSimbox: AL_SendSmsSimbox , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:sendSmsSimbox><phoneNumber>%@</phoneNumber><text>%@</text><userId>%@</userId></ns1:sendSmsSimbox></SOAP-ENV:Body></SOAP-ENV:Envelope>",sendSmsSimbox.cpPhoneNumber!,sendSmsSimbox.cpText!,sendSmsSimbox.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendSmsSimboxResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveUserHasProductDefault with Message based on SaveUserHasProductDefault Object.

    - parameter saveUserHasProductDefault:  SaveUserHasProductDefault Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveUserHasProductDefault(saveUserHasProductDefault: AL_SaveUserHasProductDefault , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveUserHasProductDefault><userId>%@</userId></ns1:saveUserHasProductDefault></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveUserHasProductDefault.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveUserHasProductDefaultResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: DesactivateCard with Message based on DesactivateCard Object.

    - parameter desactivateCard:  DesactivateCard Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opDesactivateCard(desactivateCard: AL_DesactivateCard , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:desactivateCard><email>%@</email><timeZone>%@</timeZone><status>%@</status></ns1:desactivateCard></SOAP-ENV:Body></SOAP-ENV:Envelope>",desactivateCard.cpEmail!,desactivateCard.cpTimeZone!,desactivateCard.cpStatus!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"DesactivateCardResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveCumplimient with Message based on SaveCumplimient Object.

    - parameter saveCumplimient:  SaveCumplimient Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveCumplimient(saveCumplimient: AL_SaveCumplimient , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveCumplimient><userId>%@</userId><imgDocument>JUA=</imgDocument><imgProfile>JUA=</imgProfile><estado>%@</estado><ciudad>%@</ciudad><zipCode>%@</zipCode><addres1>%@</addres1></ns1:saveCumplimient></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveCumplimient.cpUserId!,saveCumplimient.cpImgDocument!,saveCumplimient.cpImgProfile!,saveCumplimient.cpEstado!,saveCumplimient.cpCiudad!,saveCumplimient.cpZipCode!,saveCumplimient.cpAddres1!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveCumplimientResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ManualRecharge with Message based on ManualRecharge Object.

    - parameter manualRecharge:  ManualRecharge Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opManualRecharge(manualRecharge: AL_ManualRecharge , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:manualRecharge><bankId>%@</bankId><emailUser>%@</emailUser><referenceNumberOperation>%@</referenceNumberOperation><amountRecharge>%@</amountRecharge><productId>%@</productId><conceptTransaction>%@</conceptTransaction><documentTypeId>%@</documentTypeId><originApplicationId>%@</originApplicationId></ns1:manualRecharge></SOAP-ENV:Body></SOAP-ENV:Envelope>",manualRecharge.cpBankId!,manualRecharge.cpEmailUser!,manualRecharge.cpReferenceNumberOperation!,manualRecharge.cpAmountRecharge!,manualRecharge.cpProductId!,manualRecharge.cpConceptTransaction!,manualRecharge.cpDocumentTypeId!,manualRecharge.cpOriginApplicationId!)

    webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ManualRechargeResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GenerarCodigoMovilSMS with Message based on GenerarCodigoMovilSMS Object.

    - parameter generarCodigoMovilSMS:  GenerarCodigoMovilSMS Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGenerarCodigoMovilSMS(generarCodigoMovilSMS: AL_GenerarCodigoMovilSMS , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:generarCodigoMovilSMS><movil>%@</movil><codigo>%@</codigo></ns1:generarCodigoMovilSMS></SOAP-ENV:Body></SOAP-ENV:Envelope>",generarCodigoMovilSMS.cpMovil!,generarCodigoMovilSMS.cpCodigo!)

    webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GenerarCodigoMovilSMSResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: HasPrepayCard with Message based on HasPrepayCard Object.

    - parameter hasPrepayCard:  HasPrepayCard Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opHasPrepayCard(hasPrepayCard: AL_HasPrepayCard , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:hasPrepayCard><userId>%@</userId></ns1:hasPrepayCard></SOAP-ENV:Body></SOAP-ENV:Envelope>",hasPrepayCard.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"HasPrepayCardResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCardByUserId with Message based on GetCardByUserId Object.

    - parameter getCardByUserId:  GetCardByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCardByUserId(getCardByUserId: AL_GetCardByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCardByUserId><userId>%@</userId></ns1:getCardByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCardByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCardByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SendMailTest with Message based on SendMailTest Object.

    - parameter sendMailTest:  SendMailTest Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSendMailTest(sendMailTest: AL_SendMailTest , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:sendMailTest/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendMailTestResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetProductsUsePrepaidCardByUserId with Message based on GetProductsUsePrepaidCardByUserId Object.

    - parameter getProductsUsePrepaidCardByUserId:  GetProductsUsePrepaidCardByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsUsePrepaidCardByUserId(getProductsUsePrepaidCardByUserId: AL_GetProductsUsePrepaidCardByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsUsePrepaidCardByUserId><userId>%@</userId></ns1:getProductsUsePrepaidCardByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsUsePrepaidCardByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsUsePrepaidCardByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetProductsRechargePaymentByUserId with Message based on GetProductsRechargePaymentByUserId Object.

    - parameter getProductsRechargePaymentByUserId:  GetProductsRechargePaymentByUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsRechargePaymentByUserId(getProductsRechargePaymentByUserId: AL_GetProductsRechargePaymentByUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsRechargePaymentByUserId><userId>%@</userId></ns1:getProductsRechargePaymentByUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsRechargePaymentByUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsRechargePaymentByUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetStatusAffiliationRequestByUser with Message based on GetStatusAffiliationRequestByUser Object.

    - parameter getStatusAffiliationRequestByUser:  GetStatusAffiliationRequestByUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetStatusAffiliationRequestByUser(getStatusAffiliationRequestByUser: AL_GetStatusAffiliationRequestByUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getStatusAffiliationRequestByUser><userId>%@</userId><requestTypeId>%@</requestTypeId></ns1:getStatusAffiliationRequestByUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",getStatusAffiliationRequestByUser.cpUserId!,getStatusAffiliationRequestByUser.cpRequestTypeId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetStatusAffiliationRequestByUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetProductsIsExchangeProductUserId with Message based on GetProductsIsExchangeProductUserId Object.

    - parameter getProductsIsExchangeProductUserId:  GetProductsIsExchangeProductUserId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsIsExchangeProductUserId(getProductsIsExchangeProductUserId: AL_GetProductsIsExchangeProductUserId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsIsExchangeProductUserId><userId>%@</userId></ns1:getProductsIsExchangeProductUserId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsIsExchangeProductUserId.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsIsExchangeProductUserIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: RetriveAuthPlaid with Message based on RetriveAuthPlaid Object.

    - parameter retriveAuthPlaid:  RetriveAuthPlaid Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opRetriveAuthPlaid(retriveAuthPlaid: AL_RetriveAuthPlaid ,  completionHandler: @escaping (
                                Data?, NSError?) -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:retriveAuthPlaid/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RetriveAuthPlaidResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: PublicTokenPlaid with Message based on PublicTokenPlaid Object.

    - parameter publicTokenPlaid:  PublicTokenPlaid Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opPublicTokenPlaid(publicTokenPlaid: AL_PublicTokenPlaid , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:publicTokenPlaid><methods>%@</methods></ns1:publicTokenPlaid></SOAP-ENV:Body></SOAP-ENV:Envelope>",publicTokenPlaid.cpMethods!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"PublicTokenPlaidResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SavePaymentInfo with Message based on SavePaymentInfo Object.

    - parameter savePaymentInfo:  SavePaymentInfo Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSavePaymentInfo(savePaymentInfo: AL_SavePaymentInfo , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:savePaymentInfo><userApi>%@</userApi><passwordApi>%@</passwordApi><userId>%@</userId><estado>%@</estado><ciudad>%@</ciudad><zipCode>%@</zipCode><addres1>%@</addres1><paymentPatnerId>%@</paymentPatnerId><paymentTypeId>%@</paymentTypeId><creditCardTypeId>%@</creditCardTypeId><creditCardName>%@</creditCardName><creditCardNumber>%@</creditCardNumber><creditCardCVV>%@</creditCardCVV><creditCardDate>%@</creditCardDate></ns1:savePaymentInfo></SOAP-ENV:Body></SOAP-ENV:Envelope>",savePaymentInfo.cpUserApi!,savePaymentInfo.cpPasswordApi!,savePaymentInfo.cpUserId!,savePaymentInfo.cpEstado!,savePaymentInfo.cpCiudad!,savePaymentInfo.cpZipCode!,savePaymentInfo.cpAddres1!,savePaymentInfo.cpPaymentPatnerId!,savePaymentInfo.cpPaymentTypeId!,savePaymentInfo.cpCreditCardTypeId!,savePaymentInfo.cpCreditCardName!,savePaymentInfo.cpCreditCardNumber!,savePaymentInfo.cpCreditCardCVV!,savePaymentInfo.cpCreditCardDate!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SavePaymentInfoResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: GetPersonByEmail with Message based on GetPersonByEmail Object.

    - parameter getPersonByEmail:  GetPersonByEmail Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetPersonByEmail(getPersonByEmail: AL_GetPersonByEmail , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getPersonByEmail><email>%@</email></ns1:getPersonByEmail></SOAP-ENV:Body></SOAP-ENV:Envelope>",getPersonByEmail.cpEmail!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetPersonByEmailResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: HasPrepayCardAsociated with Message based on HasPrepayCardAsociated Object.

    - parameter hasPrepayCardAsociated:  HasPrepayCardAsociated Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opHasPrepayCardAsociated(hasPrepayCardAsociated: AL_HasPrepayCardAsociated , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:hasPrepayCardAsociated><userId>%@</userId></ns1:hasPrepayCardAsociated></SOAP-ENV:Body></SOAP-ENV:Envelope>",hasPrepayCardAsociated.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"HasPrepayCardAsociatedResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCumplimientStatus with Message based on GetCumplimientStatus Object.

    - parameter getCumplimientStatus:  GetCumplimientStatus Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCumplimientStatus(getCumplimientStatus: AL_GetCumplimientStatus , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCumplimientStatus><userId>%@</userId></ns1:getCumplimientStatus></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCumplimientStatus.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCumplimientStatusResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: GetBalanceHistoryByProductAndUser with Message based on GetBalanceHistoryByProductAndUser Object.

    - parameter getBalanceHistoryByProductAndUser:  GetBalanceHistoryByProductAndUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetBalanceHistoryByProductAndUser(getBalanceHistoryByProductAndUser: AL_GetBalanceHistoryByProductAndUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getBalanceHistoryByProductAndUser><userId>%@</userId><productId>%@</productId></ns1:getBalanceHistoryByProductAndUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",getBalanceHistoryByProductAndUser.cpUserId!,getBalanceHistoryByProductAndUser.cpProductId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBalanceHistoryByProductAndUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: CheckStatusCardByBusiness with Message based on CheckStatusCardByBusiness Object.

    - parameter checkStatusCardByBusiness:  CheckStatusCardByBusiness Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opCheckStatusCardByBusiness(checkStatusCardByBusiness: AL_CheckStatusCardByBusiness , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:checkStatusCardByBusiness><userEmail>%@</userEmail><timeZone>%@</timeZone></ns1:checkStatusCardByBusiness></SOAP-ENV:Body></SOAP-ENV:Envelope>",checkStatusCardByBusiness.cpUserEmail!,checkStatusCardByBusiness.cpTimeZone!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CheckStatusCardByBusinessResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ValidateBusinessManualWithdrawal with Message based on ValidateBusinessManualWithdrawal Object.

    - parameter validateBusinessManualWithdrawal:  ValidateBusinessManualWithdrawal Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opValidateBusinessManualWithdrawal(validateBusinessManualWithdrawal: AL_ValidateBusinessManualWithdrawal , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:validateBusinessManualWithdrawal><withdrawalAmount>%@</withdrawalAmount><productId>%@</productId><includeFee>true</includeFee></ns1:validateBusinessManualWithdrawal></SOAP-ENV:Body></SOAP-ENV:Envelope>",validateBusinessManualWithdrawal.cpWithdrawalAmount!,validateBusinessManualWithdrawal.cpProductId!,validateBusinessManualWithdrawal.cpIncludeFee!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ValidateBusinessManualWithdrawalResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ChangeStatusPaymentInfo with Message based on ChangeStatusPaymentInfo Object.

    - parameter changeStatusPaymentInfo:  ChangeStatusPaymentInfo Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opChangeStatusPaymentInfo(changeStatusPaymentInfo: AL_ChangeStatusPaymentInfo , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:ChangeStatusPaymentInfo><userApi>%@</userApi><passwordApi>%@</passwordApi><userId>%@</userId><paymentInfoId>%@</paymentInfoId><status>true</status></ns1:ChangeStatusPaymentInfo></SOAP-ENV:Body></SOAP-ENV:Envelope>",changeStatusPaymentInfo.cpUserApi!,changeStatusPaymentInfo.cpPasswordApi!,changeStatusPaymentInfo.cpUserId!,changeStatusPaymentInfo.cpPaymentInfoId!,changeStatusPaymentInfo.cpStatus!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ChangeStatusPaymentInfoResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetDocumentPersonTypeByCountry with Message based on GetDocumentPersonTypeByCountry Object.

    - parameter getDocumentPersonTypeByCountry:  GetDocumentPersonTypeByCountry Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetDocumentPersonTypeByCountry(getDocumentPersonTypeByCountry: AL_GetDocumentPersonTypeByCountry , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getDocumentPersonTypeByCountry><countryId>%@</countryId><originAplicationId>%@</originAplicationId></ns1:getDocumentPersonTypeByCountry></SOAP-ENV:Body></SOAP-ENV:Envelope>",getDocumentPersonTypeByCountry.cpCountryId!,getDocumentPersonTypeByCountry.cpOriginAplicationId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetDocumentPersonTypeByCountryResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: ValidateBusinessTransferToUser with Message based on ValidateBusinessTransferToUser Object.

    - parameter validateBusinessTransferToUser:  ValidateBusinessTransferToUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opValidateBusinessTransferToUser(validateBusinessTransferToUser: AL_ValidateBusinessTransferToUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:validateBusinessTransferToUser><withdrawalAmount>%@</withdrawalAmount><productId>%@</productId><includeFee>true</includeFee></ns1:validateBusinessTransferToUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",validateBusinessTransferToUser.cpWithdrawalAmount!,validateBusinessTransferToUser.cpProductId!,validateBusinessTransferToUser.cpIncludeFee!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ValidateBusinessTransferToUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetAccountBankByUser with Message based on GetAccountBankByUser Object.

    - parameter getAccountBankByUser:  GetAccountBankByUser Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetAccountBankByUser(getAccountBankByUser: AL_GetAccountBankByUser , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getAccountBankByUser><userId>%@</userId></ns1:getAccountBankByUser></SOAP-ENV:Body></SOAP-ENV:Envelope>",getAccountBankByUser.cpUserId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetAccountBankByUserResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: GetBusinessInfoByCryptogram with Message based on GetBusinessInfoByCryptogram Object.

    - parameter getBusinessInfoByCryptogram:  GetBusinessInfoByCryptogram Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetBusinessInfoByCryptogram(getBusinessInfoByCryptogram: AL_GetBusinessInfoByCryptogram , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getBusinessInfoByCryptogram><cryptogram>%@</cryptogram></ns1:getBusinessInfoByCryptogram></SOAP-ENV:Body></SOAP-ENV:Envelope>",getBusinessInfoByCryptogram.cpCryptogram!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBusinessInfoByCryptogramResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveTransactionApproveRequest with Message based on SaveTransactionApproveRequest Object.

    - parameter saveTransactionApproveRequest:  SaveTransactionApproveRequest Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveTransactionApproveRequest(saveTransactionApproveRequest: AL_SaveTransactionApproveRequest , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveTransactionApproveRequest><unifiedRegistryId>%@</unifiedRegistryId><productId>%@</productId><transactionId>%@</transactionId><bankOperationId>%@</bankOperationId><documentTypeId>%@</documentTypeId><originApplicationId>%@</originApplicationId></ns1:saveTransactionApproveRequest></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveTransactionApproveRequest.cpUnifiedRegistryId!,saveTransactionApproveRequest.cpProductId!,saveTransactionApproveRequest.cpTransactionId!,saveTransactionApproveRequest.cpBankOperationId!,saveTransactionApproveRequest.cpDocumentTypeId!,saveTransactionApproveRequest.cpOriginApplicationId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveTransactionApproveRequestResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCountries with Message based on GetCountries Object.

    - parameter getCountries:  GetCountries Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCountries(getCountries: AL_GetCountries , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCountries/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCountriesResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveAddress with Message based on SaveAddress Object.

    - parameter saveAddress:  SaveAddress Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveAddress(saveAddress: AL_SaveAddress , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveAddress><userId>%@</userId><estado>%@</estado><ciudad>%@</ciudad><zipCode>%@</zipCode><addres1>%@</addres1></ns1:saveAddress></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveAddress.cpUserId!,saveAddress.cpEstado!,saveAddress.cpCiudad!,saveAddress.cpZipCode!,saveAddress.cpAddres1!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveAddressResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SendMail with Message based on SendMail Object.

    - parameter sendMail:  SendMail Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSendMail(sendMail: AL_SendMail , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:sendMail><subject>%@</subject><body>%@</body><to>%@</to><from>%@</from></ns1:sendMail></SOAP-ENV:Body></SOAP-ENV:Envelope>",sendMail.cpSubject!,sendMail.cpBody!,sendMail.cpTo!,sendMail.cpFrom!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendMailResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: SaveAccountBank with Message based on SaveAccountBank Object.

    - parameter saveAccountBank:  SaveAccountBank Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveAccountBank(saveAccountBank: AL_SaveAccountBank , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveAccountBank><unifiedRegistryId>%@</unifiedRegistryId><accountNumber>%@</accountNumber><bankId>%@</bankId><accountTypeBankId>%@</accountTypeBankId></ns1:saveAccountBank></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveAccountBank.cpUnifiedRegistryId!,saveAccountBank.cpAccountNumber!,saveAccountBank.cpBankId!,saveAccountBank.cpAccountTypeBankId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveAccountBankResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: GetCountryCode with Message based on GetCountryCode Object.

    - parameter getCountryCode:  GetCountryCode Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCountryCode(getCountryCode: AL_GetCountryCode , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCountryCode><strAni>%@</strAni></ns1:getCountryCode></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCountryCode.cpStrAni!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCountryCodeResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: SaveProduct with Message based on SaveProduct Object.

    - parameter saveProduct:  SaveProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opSaveProduct(saveProduct: AL_SaveProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:saveProduct><enterprise>%@</enterprise><category>%@</category><productIntegrationTypeId>%@</productIntegrationTypeId><name>%@</name><taxInclude>true</taxInclude><status>true</status><referenceCode>%@</referenceCode><rateUrl>%@</rateUrl><accesNumberUrl>%@</accesNumberUrl><isFree>true</isFree><isAlocashproduct>true</isAlocashproduct><symbol>%@</symbol></ns1:saveProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",saveProduct.cpEnterprise!,saveProduct.cpCategory!,saveProduct.cpProductIntegrationTypeId!,saveProduct.cpName!,saveProduct.cpTaxInclude!,saveProduct.cpStatus!,saveProduct.cpReferenceCode!,saveProduct.cpRateUrl!,saveProduct.cpAccesNumberUrl!,saveProduct.cpIsFree!,saveProduct.cpIsAlocashproduct!,saveProduct.cpSymbol!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SaveProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
 }

/**
    Calls the SOAP Operation: GetCardByEmail with Message based on GetCardByEmail Object.

    - parameter getCardByEmail:  GetCardByEmail Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCardByEmail(getCardByEmail: AL_GetCardByEmail , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCardByEmail><email>%@</email></ns1:getCardByEmail></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCardByEmail.cpEmail!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCardByEmailResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCardByPhone with Message based on GetCardByPhone Object.

    - parameter getCardByPhone:  GetCardByPhone Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCardByPhone(getCardByPhone: AL_GetCardByPhone , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCardByPhone><phone>%@</phone></ns1:getCardByPhone></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCardByPhone.cpPhone!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCardByPhoneResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
 }

/**
    Calls the SOAP Operation: GetCardByIdentificationNumber with Message based on GetCardByIdentificationNumber Object.

    - parameter getCardByIdentificationNumber:  GetCardByIdentificationNumber Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetCardByIdentificationNumber(getCardByIdentificationNumber: AL_GetCardByIdentificationNumber , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getCardByIdentificationNumber><numberIdentification>%@</numberIdentification></ns1:getCardByIdentificationNumber></SOAP-ENV:Body></SOAP-ENV:Envelope>",getCardByIdentificationNumber.cpNumberIdentification!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetCardByIdentificationNumberResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj, error) })
 }

/**
    Calls the SOAP Operation: GetProductsByBusinessId with Message based on GetProductsByBusinessId Object.

    - parameter getProductsByBusinessId:  GetProductsByBusinessId Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetProductsByBusinessId(getProductsByBusinessId: AL_GetProductsByBusinessId , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getProductsByBusinessId><businessId>%@</businessId></ns1:getProductsByBusinessId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getProductsByBusinessId.cpBusinessId!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetProductsByBusinessIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }

/**
    Calls the SOAP Operation: ExchangeBusinessProduct with Message based on ExchangeBusinessProduct Object.

    - parameter exchangeBusinessProduct:  ExchangeBusinessProduct Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opExchangeBusinessProduct(exchangeBusinessProduct: AL_ExchangeBusinessProduct , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:exchangeBusinessProduct><businessId>%@</businessId><productSourceId>%@</productSourceId><productDestinationId>%@</productDestinationId><amountExchange>%@</amountExchange><conceptTransaction>%@</conceptTransaction><includedFee>true</includedFee><businessEmail>%@</businessEmail></ns1:exchangeBusinessProduct></SOAP-ENV:Body></SOAP-ENV:Envelope>",exchangeBusinessProduct.cpBusinessId!,exchangeBusinessProduct.cpProductSourceId!,exchangeBusinessProduct.cpProductDestinationId!,exchangeBusinessProduct.cpAmountExchange!,exchangeBusinessProduct.cpConceptTransaction!,exchangeBusinessProduct.cpIncludedFee!,exchangeBusinessProduct.cpBusinessEmail!)

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ExchangeBusinessProductResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
 }

/**
    Calls the SOAP Operation: GetLanguage with Message based on GetLanguage Object.

    - parameter getLanguage:  GetLanguage Object.
    - parameter completionHandler:  The Callback Handler.

    - returns: Void.
*/
public func opGetLanguage(getLanguage: AL_GetLanguage , completionHandler:  @escaping (Data?, NSError?)  -> Void) {

let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.wallet.alodiga.com/\"><SOAP-ENV:Body><ns1:getLanguage/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

webServiceCall.makeSoapConnection(soapLocation: "http://44.235.115.116:8080/AlodigaWallet/APIAlodigaWalletService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetLanguageResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
 }


}
