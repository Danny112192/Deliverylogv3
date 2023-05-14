import SwiftUI

struct DeliveryListView: View {
    @ObservedObject var viewModel: DeliveryListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.deliveries) { delivery in
                    Text(delivery.address)
                }
                .onDelete(perform: viewModel.removeDelivery)
            }
            .navigationTitle("Deliveries")
            .navigationBarItems(trailing: NavigationLink("Add", destination: AddDeliveryView(viewModel: viewModel)))
        }
    }
}
