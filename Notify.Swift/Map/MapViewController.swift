//
//  MapController.swift
//  Notify.Swift
//
//  Created by Prakhar Prakash Bhardwaj on 26/11/18.
//  Copyright © 2018 Prakhar Prakash Bhardwaj. All rights reserved.
//

//////////Single coordinates///////////
import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
//    var latitude:Double?
//    var longitude:Double?
//    var name:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2D(
            latitude: 28.6144,
            longitude: 77.3588)
        let location_1 = CLLocationCoordinate2D(
            latitude: 28.6317,
            longitude: 77.3551)
        let location_2 = CLLocationCoordinate2D(
            latitude: 28.6034,
            longitude: 77.3616)
        
        
        
//        var path = Bundle.main.path(forResource:"Maps", ofType: "plist")
//        if let item = NSArray(contentsOfFile: path!){
//            //let dict = [String:AnyObject]()
//            let name: [String] = item.value(forKeyPath:"Name") as! NSArray as! [String]
//            let lats: [Double] = item.value(forKeyPath: "Lat") as! NSArray as! [Double]
//            let long: [Double] = item.value(forKeyPath: "Long") as! NSArray as! [Double]
//            }
//        let chapterPath = NSBundle.mainBundle().pathForResource("Maps", ofType: "plist")
//        if let arrayOfItems: [AnyObject] = NSArray(contentsOfFile: chapterPath!) {
//            let chapterNames: [String] = arrayOfItems.valueForKeyPath("chapterName") as NSArray as [String]
//            let pageNumbers: [Int] = arrayOfItems.valueForKeyPath("pageNumber") as NSArray as [Int]
//        }
      
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: location, span: span)

        mapView.setRegion(region, animated: true)

        let annotation = MKPointAnnotation()
        let annotation_1 = MKPointAnnotation()
        let annotation_2 = MKPointAnnotation()
        
//        var coordinate: CLLocationCoordinate2D {
//            guard let lat = path.it, let long = longitude
//                else {
//                    return CLLocationCoordinate2D()
//            }
//            return CLLocationCoordinate2D(latitude: lat, longitude: long)
//        }
//        func coordinates() -> annotation.coordinate {
//
//        }
        
        annotation.coordinate = location
        annotation.title = "J.S.S. Academy of Technical Education"
        annotation.subtitle = "Noida"
        
        annotation_1.coordinate = location_1
        annotation_1.title = "Police Station"
        annotation_1.subtitle = "Sector-58"
        
        annotation_2.coordinate = location_2
        annotation_2.title = "Police Station"
        annotation_2.subtitle = "Sector-62"

        mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation_1)
        mapView.addAnnotation(annotation_2)
    }
}
