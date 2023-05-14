import Foundation

struct Delivery {
    var id: UUID
    var address: String
    var notes: String
    var tipAmount: Double
    var feeAmount: Double
    
    init(address: String, notes: String, tipAmount: Double, feeAmount: Double) {
        self.id = UUID()
        self.address = address
        self.notes = notes
        self.tipAmount = tipAmount
        self.feeAmount = feeAmount
    }
}
