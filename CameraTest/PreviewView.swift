//
//  PreviewView.swift
//  CameraTest
//
//  Created by Matthew Kendall on 2017-05-08.
//  Copyright © 2017 Matthew Kendall. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class PreviewView : UIView {
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
    var session: AVCaptureSession? {
        get {
            return videoPreviewLayer.session
        }
        set {
            videoPreviewLayer.session = newValue
        }
    }
    
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
}
