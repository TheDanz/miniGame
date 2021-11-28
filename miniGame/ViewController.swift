//
//  ViewController.swift
//  miniGame
//
//  Created by Danil Ryumin on 28.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: MyView!
    @IBOutlet weak var view2: MyView!
    @IBOutlet weak var view3: MyView!
    @IBOutlet weak var view4: MyView!
    @IBOutlet weak var view5: MyView!
    @IBOutlet weak var view6: MyView!
    @IBOutlet weak var view7: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func panView1(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view1 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            view1.isHidden = true
            view2.workingView.backgroundColor = .blue
            view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view1 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            view1.isHidden = true
            view3.workingView.backgroundColor = .blue
            view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view1 на view4
        var isView4Xcross = false
        var isView4Ycross = false
        
        for value in Int(view4frame.minX)...Int(view4frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView4Xcross = true
            }
        }
        
        for value in Int(view4frame.minY)...Int(view4frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView4Ycross = true
            }
        }
        
        if isView4Xcross && isView4Ycross {
            view1.isHidden = true
            view4.workingView.backgroundColor = .blue
            view4.frame = CGRect(x: view4frame.origin.x, y: view4frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view1 на view5
        var isView5Xcross = false
        var isView5Ycross = false
        
        for value in Int(view5frame.minX)...Int(view5frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView5Xcross = true
            }
        }
        
        for value in Int(view5frame.minY)...Int(view5frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView5Ycross = true
            }
        }
        
        if isView5Xcross && isView5Ycross {
            view1.isHidden = true
            view5.workingView.backgroundColor = .blue
            view5.frame = CGRect(x: view5frame.origin.x, y: view5frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view1 на view6
        var isView6Xcross = false
        var isView6Ycross = false
        
        for value in Int(view6frame.minX)...Int(view6frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView6Xcross = true
            }
        }
        
        for value in Int(view6frame.minY)...Int(view6frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView6Ycross = true
            }
        }
        
        if isView6Xcross && isView6Ycross {
            view1.isHidden = true
            view6.workingView.backgroundColor = .blue
            view6.frame = CGRect(x: view6frame.origin.x, y: view6frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view1 на view7
        var isView7Xcross = false
        var isView7Ycross = false
        
        for value in Int(view7frame.minX)...Int(view7frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView7Xcross = true
            }
        }
        
        for value in Int(view7frame.minY)...Int(view7frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView7Ycross = true
            }
        }
        
        if isView7Xcross && isView7Ycross {
            view1.isHidden = true
            view7.workingView.backgroundColor = .blue
            view7.frame = CGRect(x: view7frame.origin.x, y: view7frame.origin.y, width: 110, height: 110)
            return
        }
    }
    
    @IBAction func panView2(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view2 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            view2.isHidden = true
            view1.workingView.backgroundColor = .blue
            view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view2 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            view2.isHidden = true
            view3.workingView.backgroundColor = .blue
            view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view2 на view4
        var isView4Xcross = false
        var isView4Ycross = false
        
        for value in Int(view4frame.minX)...Int(view4frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView4Xcross = true
            }
        }
        
        for value in Int(view4frame.minY)...Int(view4frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView4Ycross = true
            }
        }
        
        if isView4Xcross && isView4Ycross {
            view2.isHidden = true
            view4.workingView.backgroundColor = .blue
            view4.frame = CGRect(x: view4frame.origin.x, y: view4frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view2 на view5
        var isView5Xcross = false
        var isView5Ycross = false
        
        for value in Int(view5frame.minX)...Int(view5frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView5Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView5Ycross = true
            }
        }
        
        if isView5Xcross && isView5Ycross {
            view2.isHidden = true
            view5.workingView.backgroundColor = .blue
            view5.frame = CGRect(x: view5frame.origin.x, y: view5frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view2 на view6
        var isView6Xcross = false
        var isView6Ycross = false
        
        for value in Int(view6frame.minX)...Int(view6frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView6Xcross = true
            }
        }
        
        for value in Int(view6frame.minY)...Int(view6frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView6Ycross = true
            }
        }
        
        if isView6Xcross && isView6Ycross {
            view2.isHidden = true
            view6.workingView.backgroundColor = .blue
            view6.frame = CGRect(x: view6frame.origin.x, y: view6frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view2 на view7
        var isView7Xcross = false
        var isView7Ycross = false
        
        for value in Int(view7frame.minX)...Int(view7frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView7Xcross = true
            }
        }
        
        for value in Int(view7frame.minY)...Int(view7frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView7Ycross = true
            }
        }
        
        if isView7Xcross && isView7Ycross {
            view2.isHidden = true
            view7.workingView.backgroundColor = .blue
            view7.frame = CGRect(x: view7frame.origin.x, y: view7frame.origin.y, width: 110, height: 110)
            return
        }
    }
    
    @IBAction func panView3(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view3 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            view3.isHidden = true
            view1.workingView.backgroundColor = .blue
            view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view3 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            view3.isHidden = true
            view2.workingView.backgroundColor = .blue
            view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view3 на view4
        var isView4Xcross = false
        var isView4Ycross = false
        
        for value in Int(view4frame.minX)...Int(view4frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView4Xcross = true
            }
        }
        
        for value in Int(view4frame.minY)...Int(view4frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView4Ycross = true
            }
        }
        
        if isView4Xcross && isView4Ycross {
            view3.isHidden = true
            view4.workingView.backgroundColor = .blue
            view4.frame = CGRect(x: view4frame.origin.x, y: view4frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view3 на view5
        var isView5Xcross = false
        var isView5Ycross = false
        
        for value in Int(view5frame.minX)...Int(view5frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView5Xcross = true
            }
        }
        
        for value in Int(view5frame.minY)...Int(view5frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView5Ycross = true
            }
        }
        
        if isView5Xcross && isView5Ycross {
            view3.isHidden = true
            view5.workingView.backgroundColor = .blue
            view5.frame = CGRect(x: view5frame.origin.x, y: view5frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view3 на view6
        var isView6Xcross = false
        var isView6Ycross = false
        
        for value in Int(view6frame.minX)...Int(view6frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView6Xcross = true
            }
        }
        
        for value in Int(view6frame.minY)...Int(view6frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView6Ycross = true
            }
        }
        
        if isView6Xcross && isView6Ycross {
            view3.isHidden = true
            view6.workingView.backgroundColor = .blue
            view6.frame = CGRect(x: view6frame.origin.x, y: view6frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view3 на view7
        var isView7Xcross = false
        var isView7Ycross = false
        
        for value in Int(view7frame.minX)...Int(view7frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView7Xcross = true
            }
        }
        
        for value in Int(view7frame.minY)...Int(view7frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView7Ycross = true
            }
        }
        
        if isView7Xcross && isView7Ycross {
            view3.isHidden = true
            view7.workingView.backgroundColor = .blue
            view7.frame = CGRect(x: view7frame.origin.x, y: view7frame.origin.y, width: 110, height: 110)
            return
        }
    }
    
    @IBAction func panView4(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view4 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view4frame.minX) == value || Int(view4frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view4frame.minY) == value || Int(view4frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            view4.isHidden = true
            view1.workingView.backgroundColor = .blue
            view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view4 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view4frame.minX) == value || Int(view4frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view4frame.minY) == value || Int(view4frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            view4.isHidden = true
            view2.workingView.backgroundColor = .blue
            view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view4 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view4frame.minX) == value || Int(view4frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view4frame.minY) == value || Int(view4frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            view4.isHidden = true
            view3.workingView.backgroundColor = .blue
            view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view4 на view5
        var isView5Xcross = false
        var isView5Ycross = false
        
        for value in Int(view5frame.minX)...Int(view5frame.maxX) {
            if Int(view4frame.minX) == value || Int(view4frame.maxX) == value {
                isView5Xcross = true
            }
        }
        
        for value in Int(view5frame.minY)...Int(view5frame.maxY) {
            if Int(view4frame.minY) == value || Int(view4frame.maxY) == value {
                isView5Ycross = true
            }
        }
        
        if isView5Xcross && isView5Ycross {
            view4.isHidden = true
            view5.workingView.backgroundColor = .blue
            view5.frame = CGRect(x: view5frame.origin.x, y: view5frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view4 на view6
        var isView6Xcross = false
        var isView6Ycross = false
        
        for value in Int(view6frame.minX)...Int(view6frame.maxX) {
            if Int(view4frame.minX) == value || Int(view4frame.maxX) == value {
                isView6Xcross = true
            }
        }
        
        for value in Int(view6frame.minY)...Int(view6frame.maxY) {
            if Int(view4frame.minY) == value || Int(view4frame.maxY) == value {
                isView6Ycross = true
            }
        }
        
        if isView6Xcross && isView6Ycross {
            view4.isHidden = true
            view6.workingView.backgroundColor = .blue
            view6.frame = CGRect(x: view6frame.origin.x, y: view6frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view4 на view7
        var isView7Xcross = false
        var isView7Ycross = false
        
        for value in Int(view7frame.minX)...Int(view7frame.maxX) {
            if Int(view4frame.minX) == value || Int(view4frame.maxX) == value {
                isView7Xcross = true
            }
        }
        
        for value in Int(view7frame.minY)...Int(view7frame.maxY) {
            if Int(view4frame.minY) == value || Int(view4frame.maxY) == value {
                isView7Ycross = true
            }
        }
        
        if isView7Xcross && isView7Ycross {
            view4.isHidden = true
            view7.workingView.backgroundColor = .blue
            view7.frame = CGRect(x: view7frame.origin.x, y: view7frame.origin.y, width: 110, height: 110)
            return
        }
    }
        
    @IBAction func panView5(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view5 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view5frame.minX) == value || Int(view5frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view5frame.minY) == value || Int(view5frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            view5.isHidden = true
            view1.workingView.backgroundColor = .blue
            view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view5 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view5frame.minX) == value || Int(view5frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view5frame.minY) == value || Int(view5frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            view5.isHidden = true
            view2.workingView.backgroundColor = .blue
            view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view5 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view5frame.minX) == value || Int(view5frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view5frame.minY) == value || Int(view5frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            view5.isHidden = true
            view3.workingView.backgroundColor = .blue
            view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view5 на view4
        var isView4Xcross = false
        var isView4Ycross = false
        
        for value in Int(view4frame.minX)...Int(view4frame.maxX) {
            if Int(view5frame.minX) == value || Int(view5frame.maxX) == value {
                isView4Xcross = true
            }
        }
        
        for value in Int(view4frame.minY)...Int(view4frame.maxY) {
            if Int(view5frame.minY) == value || Int(view5frame.maxY) == value {
                isView4Ycross = true
            }
        }
        
        if isView4Xcross && isView4Ycross {
            view5.isHidden = true
            view4.workingView.backgroundColor = .blue
            view4.frame = CGRect(x: view4frame.origin.x, y: view4frame.origin.y, width: 110, height: 110)
            return
        }
    
        // Проверяем лежит ли view5 на view6
        var isView6Xcross = false
        var isView6Ycross = false
        
        for value in Int(view6frame.minX)...Int(view6frame.maxX) {
            if Int(view5frame.minX) == value || Int(view5frame.maxX) == value {
                isView6Xcross = true
            }
        }
        
        for value in Int(view6frame.minY)...Int(view6frame.maxY) {
            if Int(view5frame.minY) == value || Int(view5frame.maxY) == value {
                isView6Ycross = true
            }
        }
        
        if isView6Xcross && isView6Ycross {
            view5.isHidden = true
            view6.workingView.backgroundColor = .blue
            view6.frame = CGRect(x: view6frame.origin.x, y: view6frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view5 на view7
        var isView7Xcross = false
        var isView7Ycross = false
        
        for value in Int(view7frame.minX)...Int(view7frame.maxX) {
            if Int(view5frame.minX) == value || Int(view5frame.maxX) == value {
                isView7Xcross = true
            }
        }
        
        for value in Int(view7frame.minY)...Int(view7frame.maxY) {
            if Int(view5frame.minY) == value || Int(view5frame.maxY) == value {
                isView7Ycross = true
            }
        }
        
        if isView7Xcross && isView7Ycross {
            view5.isHidden = true
            view7.workingView.backgroundColor = .blue
            view7.frame = CGRect(x: view7frame.origin.x, y: view7frame.origin.y, width: 110, height: 110)
            return
        }
    }
        
    @IBAction func panView6(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view6 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view6frame.minX) == value || Int(view6frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view6frame.minY) == value || Int(view6frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            view6.isHidden = true
            view1.workingView.backgroundColor = .blue
            view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view6 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view6frame.minX) == value || Int(view6frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view6frame.minY) == value || Int(view6frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            view6.isHidden = true
            view2.workingView.backgroundColor = .blue
            view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view6 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view6frame.minX) == value || Int(view6frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view6frame.minY) == value || Int(view6frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            view6.isHidden = true
            view3.workingView.backgroundColor = .blue
            view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view6 на view4
        var isView4Xcross = false
        var isView4Ycross = false
        
        for value in Int(view4frame.minX)...Int(view4frame.maxX) {
            if Int(view6frame.minX) == value || Int(view6frame.maxX) == value {
                isView4Xcross = true
            }
        }
        
        for value in Int(view4frame.minY)...Int(view4frame.maxY) {
            if Int(view6frame.minY) == value || Int(view6frame.maxY) == value {
                isView4Ycross = true
            }
        }
        
        if isView4Xcross && isView4Ycross {
            view6.isHidden = true
            view4.workingView.backgroundColor = .blue
            view4.frame = CGRect(x: view4frame.origin.x, y: view4frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view6 на view5
        var isView5Xcross = false
        var isView5Ycross = false
        
        for value in Int(view5frame.minX)...Int(view5frame.maxX) {
            if Int(view6frame.minX) == value || Int(view6frame.maxX) == value {
                isView5Xcross = true
            }
        }
        
        for value in Int(view5frame.minY)...Int(view5frame.maxY) {
            if Int(view6frame.minY) == value || Int(view6frame.maxY) == value {
                isView5Ycross = true
            }
        }
        
        if isView5Xcross && isView5Ycross {
            view6.isHidden = true
            view5.workingView.backgroundColor = .blue
            view5.frame = CGRect(x: view5frame.origin.x, y: view5frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view6 на view7
        var isView7Xcross = false
        var isView7Ycross = false
        
        for value in Int(view7frame.minX)...Int(view7frame.maxX) {
            if Int(view6frame.minX) == value || Int(view6frame.maxX) == value {
                isView7Xcross = true
            }
        }
        
        for value in Int(view7frame.minY)...Int(view7frame.maxY) {
            if Int(view6frame.minY) == value || Int(view6frame.maxY) == value {
                isView7Ycross = true
            }
        }
        
        if isView7Xcross && isView7Ycross {
            view6.isHidden = true
            view7.workingView.backgroundColor = .blue
            view7.frame = CGRect(x: view7frame.origin.x, y: view7frame.origin.y, width: 110, height: 110)
            return
        }
    }
        
    @IBAction func panView7(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        let view4frame = view4.frame
        let view5frame = view5.frame
        let view6frame = view6.frame
        let view7frame = view7.frame
       
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view7 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view7frame.minX) == value || Int(view7frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view7frame.minY) == value || Int(view7frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            view7.isHidden = true
            view1.workingView.backgroundColor = .blue
            view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view7 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view7frame.minX) == value || Int(view7frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view7frame.minY) == value || Int(view7frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            view7.isHidden = true
            view2.workingView.backgroundColor = .blue
            view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view7 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view7frame.minX) == value || Int(view7frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view7frame.minY) == value || Int(view7frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            view7.isHidden = true
            view3.workingView.backgroundColor = .blue
            view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view7 на view4
        var isView4Xcross = false
        var isView4Ycross = false
        
        for value in Int(view4frame.minX)...Int(view4frame.maxX) {
            if Int(view7frame.minX) == value || Int(view7frame.maxX) == value {
                isView4Xcross = true
            }
        }
        
        for value in Int(view4frame.minY)...Int(view4frame.maxY) {
            if Int(view7frame.minY) == value || Int(view7frame.maxY) == value {
                isView4Ycross = true
            }
        }
        
        if isView4Xcross && isView4Ycross {
            view7.isHidden = true
            view4.workingView.backgroundColor = .blue
            view4.frame = CGRect(x: view4frame.origin.x, y: view4frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view7 на view5
        var isView5Xcross = false
        var isView5Ycross = false
        
        for value in Int(view5frame.minX)...Int(view5frame.maxX) {
            if Int(view7frame.minX) == value || Int(view7frame.maxX) == value {
                isView5Xcross = true
            }
        }
        
        for value in Int(view5frame.minY)...Int(view5frame.maxY) {
            if Int(view7frame.minY) == value || Int(view7frame.maxY) == value {
                isView5Ycross = true
            }
        }
        
        if isView5Xcross && isView5Ycross {
            view7.isHidden = true
            view5.workingView.backgroundColor = .blue
            view5.frame = CGRect(x: view5frame.origin.x, y: view5frame.origin.y, width: 110, height: 110)
            return
        }
        
        // Проверяем лежит ли view7 на view6
        var isView6Xcross = false
        var isView6Ycross = false
        
        for value in Int(view6frame.minX)...Int(view6frame.maxX) {
            if Int(view7frame.minX) == value || Int(view7frame.maxX) == value {
                isView6Xcross = true
            }
        }
        
        for value in Int(view6frame.minY)...Int(view6frame.maxY) {
            if Int(view7frame.minY) == value || Int(view7frame.maxY) == value {
                isView6Ycross = true
            }
        }
        
        if isView6Xcross && isView6Ycross {
            view7.isHidden = true
            view6.workingView.backgroundColor = .blue
            view6.frame = CGRect(x: view6frame.origin.x, y: view6frame.origin.y, width: 110, height: 110)
            return
        }
    }
}

