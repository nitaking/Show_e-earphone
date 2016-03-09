//
//  ViewController.swift
//  Show_e-earphone
//
//  Created by Satoshi Nitawaki on 2016/03/09.
//  Copyright © 2016年 仁田脇 理史. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate {
    
    let URL_e_earphone = "http://www.e-earphone.jp/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView : UIWebView = UIWebView()
        webView.delegate = self
        webView.frame = self.view.bounds
        self.view.addSubview(webView)
        let url: NSURL = NSURL(string: URL_e_earphone)!
        let request: NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 自動呼び出し関数
    func webViewDidStartLoad(webView: UIWebView) {
        print("読み込み開始しました！" )
    }
    
    // 自動呼び出し関数
    func webViewDidFinishLoad(webView: UIWebView) {
        print("読み込み完了しました！")
    }
}

