//
//  ViewController.swift
//  Comunidad de Moviles AppViewer
//
//  Created by Jafeth  Vásquez on 4/8/17.
//  Copyright © 2017 Jafeth Vásquez. All rights reserved.
//

import UIKit
import WebKit



class ViewController: UIViewController,WKUIDelegate {
    


    var webView: WKWebView!
    var aplicationUrl:String!
    var chargeSpinner = UIActivityIndicatorView()
    
    
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        let myURL = URL(string:aplicationUrl!)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        chargeSpinner.center = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2-150)
        chargeSpinner.hidesWhenStopped = true;
        chargeSpinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        chargeSpinner.color = UIColor.black
        self.view.addSubview(chargeSpinner)
        
        chargeSpinner.color = UIColor.darkGray
        
        self.webView.addSubview(self.chargeSpinner)
        self.webView.navigationDelegate = self as? WKNavigationDelegate
        self.chargeSpinner.hidesWhenStopped = true
        self.chargeSpinner.startAnimating()

        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        chargeSpinner.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        chargeSpinner.stopAnimating()
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

