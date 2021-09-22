//
//  AlgorithmViewController.swift
//  iOS_Week_1
//
//  Created by Erkut Bas on 19.09.2021.
//

import UIKit

class AlgorithmViewController: UIViewController {
    
    private var algorithmProtocol: AlgorithmProtocol! = AlgorithmManager()
    
    convenience init(algorithmProtocol: AlgorithmProtocol) {
        self.init()
        self.algorithmProtocol = algorithmProtocol
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func twoSumAction(_ sender: Any ) {
        algorithmProtocol.twoSumTest()
    }
    
    @IBAction func isPalindromAction(_ sender: Any) {
        algorithmProtocol.isPalindromTest()
    }
    
    @IBAction func AnagramAction(_ sender: Any) {
        algorithmProtocol.isAnagramTest()
    }
    
    @IBAction func duplicationAction(_ sender: Any) {
        algorithmProtocol.duplicateTest()
    }
    
    @IBAction func mergeArrayAction(_ sender: Any) {
        algorithmProtocol.mergeArraysTest()
    }
    
    @IBAction func missingNumberAction(_ sender: Any) {
        algorithmProtocol.missingNumberTest()
    }
    
    @IBAction func arrayIntersectionAction(_ sender: Any) {
        algorithmProtocol.arrayIntersectionTest()
    }
    
}
