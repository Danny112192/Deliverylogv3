import SwiftUI

struct AddDeliveryView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: DeliveryListViewModel
    @State private var address = ""
    @State private var notes = ""
    @State private var tipAmount = 0.0
    @State private var feeAmount = 0.0
    
    var body: some View {
        Form {
            Section(header: Text("Delivery Details")) {
                TextField("Address", text: $address)
                TextField("Notes", text: $notes)
            }
            
            Section(header: Text("Payment Details")) {
                TextField("Tip Amount", value: $tipAmount, formatter: NumberFormatter.currency)
                TextField("Fee Amount", value: $feeAmount, formatter: NumberFormatter.currency)
            }
            
            Button("Save") {
                let newDelivery = Delivery(address: address, notes: notes, tipAmount: tipAmount, feeAmount: feeAmount)
                viewModel.addDelivery(newDelivery)
                presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Add Delivery")
    }
}
