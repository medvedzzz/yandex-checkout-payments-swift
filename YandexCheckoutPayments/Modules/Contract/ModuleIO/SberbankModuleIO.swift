struct SberbankModuleInputData {
    let shopName: String
    let purchaseDescription: String
    let paymentMethod: PaymentMethodViewModel
    let price: PriceViewModel
    let shouldChangePaymentMethod: Bool
    let testModeSettings: TestModeSettings?
    let tokenizeScheme: AnalyticsEvent.TokenizeScheme
    let isLoggingEnabled: Bool
    let phoneNumber: String?
}

protocol SberbankModuleInput: ContractStateHandler { }

protocol SberbankModuleOutput: class {
    func sberbank(_ module: SberbankModuleInput,
                  phoneNumber: String)
    func didFinish(on module: SberbankModuleInput)
    func didPressChangeAction(on module: SberbankModuleInput)
}
