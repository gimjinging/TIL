//
//  ViewController.swift
//  0109task1-mapView
//
//  Created by Mac mini on 2020/01/11.
//  Copyright © 2020 Mac mini. All rights reserved.
//
/*
 [ 과제 ]
 1. 입력한 주소들을 차례대로 잇는 선 만들기   (샘플 영상 참고)
 > 텍스트필드에 주소를 입력하면 해당 위치로 애니메이션과 함께 맵 이동 (CoordinateSpan 값 - 0.02)
 > 입력한 주소값으로 이동한 뒤 그 위치를 표시하기 위한 사각형 그리기 + Annotation 추가하기
 > Annotation 의 제목은 1번째 행선지, 2번째 행선지 처럼 순서를 표시하고, 부제목은 그 곳의 주소 나타내기
 > 마지막으로 입력한 주소값과 그 직전의 주소값 사이에 선 그리기
   (가장 처음 입력한 주소는 그것과 연결할 직전의 주소값이 없으므로 제외)
 참고: delegate 메서드 중 regionDidChangeAnimated 메서드 참고
 */

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    var count = 0
    var pastLatitude = 0.0
    var pastLongitude = 0.0
    var latitude = 0.0 {
        willSet {
            pastLatitude = latitude
        }
    }
    var longitude = 0.0 {
        willSet {
            pastLongitude = longitude
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        let center = CLLocationCoordinate2DMake(37.566308, 126.977948)
        setRegion(coordinate: center)
    }
    
    func setRegion(coordinate: CLLocationCoordinate2D) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
    
 
    @IBAction func primaryActionTriggered(_ sender: Any) {
        guard let addr = textField.text else { return }
        self.geocodeAddressString(addr)
    }
    
    func geocodeAddressString(_ addressString: String) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(addressString) { (placeMark, error) in
        if error != nil {
            return print(error!.localizedDescription)
            }
            guard let place = placeMark?.first?.location?.coordinate else { return }
            self.latitude = place.latitude
            self.longitude = place.longitude
            
            let center = CLLocationCoordinate2DMake(place.latitude, place.longitude)
            self.setRegion(coordinate: center)
            self.setAnnotation()
        }
    }
    
    func setAnnotation() {
        let place = MKPointAnnotation()
        count += 1
        place.title = "\(count)번째 행선지"
        place.subtitle = textField.text
        place.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        mapView.addAnnotation(place)
    }
}


extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if let polyline = overlay as? MKPolyline {
            let renderer = MKPolylineRenderer(polyline: polyline)
            renderer.strokeColor = .systemPink
            renderer.lineWidth = 3
            return renderer
        }
        return MKOverlayRenderer(overlay: overlay)
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        // This method is called at the end of a change to the map's visible region.

        let center = CLLocationCoordinate2DMake(latitude, longitude)
        var point1 = center
        point1.latitude += 0.005
        point1.longitude -= 0.005
        var point2 = center
        point2.latitude += 0.005
        point2.longitude += 0.005
        var point3 = center
        point3.latitude -= 0.005
        point3.longitude -= 0.005
        var point4 = center
        point4.latitude -= 0.005
        point4.longitude += 0.005
        
        let points: [CLLocationCoordinate2D] = [point1, point2, point4, point3, point1]
        let square = MKPolyline(coordinates: points, count: points.count)
        mapView.addOverlay(square)
        
        print("now count:", count)
        guard count > 1 else { return }
        let place1 = CLLocationCoordinate2DMake(pastLatitude, pastLongitude)
        let place2 = CLLocationCoordinate2DMake(latitude, longitude)
        
        let places: [CLLocationCoordinate2D] = [place1, place2]
        let line = MKPolyline(coordinates: places, count: places.count)
        mapView.addOverlay(line)
    }
}
