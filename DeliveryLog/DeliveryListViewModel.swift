import Foundation

class DeliveryListViewModel: ObservableObject {
    @Published var deliveries: [Delivery] = []
    
    func addDelivery(_ delivery: Delivery) {
        deliveries.append(delivery)
    }
    
    func removeDelivery(at index: Int) {
        deliveries.remove(at: index)
    }
}
