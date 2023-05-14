// MapViewController.swift
import UIKit
import MapKit

public class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    var addresses: [String] = []
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        for address in addresses {
            let geocoder = CLGeocoder()
            geocoder.geocodeAddressString(address) { placemarks, error in
                if let placemarks = placemarks {
                    let placemark = placemarks.first!
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = placemark.location!.coordinate
                    annotation.title = address
                    self.mapView.addAnnotation(annotation)
                }
            }
        }
    }
}
