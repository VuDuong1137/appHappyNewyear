//
//  ViewController.swift
//  lamapptet
//
//  Created by Dương chãng on 12/30/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var bom1: UIImageView!
    @IBOutlet weak var bom2: UIImageView!
    @IBOutlet weak var bom3: UIImageView!
    @IBOutlet weak var bom4: UIImageView!
    @IBOutlet weak var bom5: UIImageView!
    @IBOutlet weak var bom6: UIImageView!
    @IBOutlet weak var bom7: UIImageView!
    @IBOutlet weak var bom8: UIImageView!
    @IBOutlet weak var bom9: UIImageView!
    @IBOutlet weak var bom10: UIImageView!
    @IBOutlet weak var lbldiem: UILabel!
    @IBOutlet weak var chuot: UIImageView!
    var soundplay: AVAudioPlayer!
    var Player: AVAudioPlayer!
    var time: Timer!
    
    var w:CGFloat!, h:CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        w = self.view.frame.width
        h = self.view.frame.height
        
        // xác định kich thước cho bom
        // toạ độ hiện tại sử dụng origin.x origin.y
        // bắt chiều rông, chièu cao hiện có  của dối tượng sử dụng size
        //width: bom1.frame.size.width, height: bom1.frame.size.height)
        // come lại là chế độ khó
        bom1.frame = CGRect(x: bom1.frame.origin.x, y: bom1.frame.origin.y - 700, width: bom1.frame.size.width, height: bom1.frame.size.height)
        bom2.frame = CGRect(x: bom2.frame.origin.x, y: bom2.frame.origin.y - 700, width: bom2.frame.size.width, height: bom2.frame.size.height)
        bom3.frame = CGRect(x: bom3.frame.origin.x, y: bom3.frame.origin.y - 700, width: bom3.frame.size.width, height: bom3.frame.size.height)

        bom4.frame = CGRect(x: bom4.frame.origin.x, y: bom4.frame.origin.y - 700, width: bom4.frame.size.width, height: bom4.frame.size.height)
        bom5.frame = CGRect(x: bom5.frame.origin.x, y: bom5.frame.origin.y - 700, width: bom5.frame.size.width, height: bom5.frame.size.height)
        bom6.frame = CGRect(x: bom6.frame.origin.x, y: bom6.frame.origin.y - 700, width: bom6.frame.size.width, height: bom6.frame.size.height)

        bom7.frame = CGRect(x: bom7.frame.origin.x, y: bom7.frame.origin.y - 700, width: bom7.frame.size.width, height: bom7.frame.size.height)
        bom8.frame = CGRect(x: bom8.frame.origin.x, y: bom8.frame.origin.y - 700, width: bom8.frame.size.width, height: bom8.frame.size.height)
        bom9.frame = CGRect(x: bom9.frame.origin.x, y: bom9.frame.origin.y - 700, width: bom9.frame.size.width, height: bom9.frame.size.height)
        bom10.frame = CGRect(x: bom10.frame.origin.x, y: bom10.frame.origin.y - 700, width: bom10.frame.size.width, height: bom10.frame.size.height)
    }
    @IBAction func playgame(_ sender: Any) {
        time = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(run), userInfo: nil, repeats: true)
        // am nut playgame định dang cho các trướng ngại vât
        let path = Bundle.main.path(forResource: "HappyNewYear-Saxophone_4gm26.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do{
            soundplay = try AVAudioPlayer(contentsOf: url)
            soundplay?.play()
        }catch{
            print("lỗi rồi bạn  ")
        }
        
        bom1.frame.origin.y = 0 - 1200
        bom2.frame.origin.y = 0 - 100
        bom3.frame.origin.y = 0 - 1000
        bom4.frame.origin.y = 0 - 100
        bom5.frame.origin.y = 0 - 400
        bom6.frame.origin.y = 0 - 900
        bom7.frame.origin.y = 0 - 600
        bom8.frame.origin.y = 0 - 400
        bom9.frame.origin.y = 0 - 600
        bom10.frame.origin.y = 0 - 700
        chuot.frame = CGRect(x: 176, y: 801, width: chuot.frame.size.width, height: chuot.frame.size.height)
        lbldiem.text = "0"
    }
    @objc func run(){
        bom1.frame = CGRect(x: bom1.frame.origin.x, y: bom1.frame.origin.y + 1, width: bom1.frame.size.width, height: bom1.frame.size.height)
        if bom1.frame.origin.y == h {
            bom1.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom1.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom2.frame = CGRect(x: bom2.frame.origin.x, y: bom2.frame.origin.y + 1, width: bom2.frame.size.width, height: bom2.frame.size.height)
        if bom2.frame.origin.y == h {
            bom2.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom2.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom3.frame = CGRect(x: bom3.frame.origin.x, y: bom3.frame.origin.y + 1, width: bom3.frame.size.width, height: bom3.frame.size.height)
        
        // cho quay lại màn hình
        if bom3.frame.origin.y == h {
            bom3.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom3.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom4.frame = CGRect(x: bom4.frame.origin.x, y: bom4.frame.origin.y + 1, width: bom4.frame.size.width, height: bom4.frame.size.height)
        if bom4.frame.origin.y == h {
            bom4.frame.origin.y = 0 - 130
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom4.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom5.frame = CGRect(x: bom5.frame.origin.x, y: bom5.frame.origin.y + 1, width: bom5.frame.size.width, height: bom5.frame.size.height)
        if bom5.frame.origin.y == h {
            bom5.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom5.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom6.frame = CGRect(x: bom6.frame.origin.x, y: bom6.frame.origin.y + 1, width: bom6.frame.size.width, height: bom6.frame.size.height)
        if bom6.frame.origin.y == h {
            bom6.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom6.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom7.frame = CGRect(x: bom7.frame.origin.x, y: bom7.frame.origin.y + 1, width: bom7.frame.size.width, height: bom7.frame.size.height)
        if bom7.frame.origin.y == h {
            bom7.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom7.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom8.frame = CGRect(x: bom8.frame.origin.x, y: bom8.frame.origin.y + 1, width: bom8.frame.size.width, height: bom8.frame.size.height)
        if bom8.frame.origin.y == h {
            bom8.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom8.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom9.frame = CGRect(x: bom9.frame.origin.x, y: bom9.frame.origin.y + 1, width: bom9.frame.size.width, height: bom9.frame.size.height)
        if bom9.frame.origin.y == h {
            bom9.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom9.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        bom10.frame = CGRect(x: bom10.frame.origin.x, y: bom10.frame.origin.y + 1, width: bom10.frame.size.width, height: bom10.frame.size.height)
        if bom10.frame.origin.y == h {
            bom10.frame.origin.y = 0 - 130
            // ramdom vitri tự động
            let r: Float = Float(arc4random_uniform(UInt32(w)))
            bom10.frame.origin.x = CGFloat(r)
            var diem: Int! = Int(lbldiem.text!)
            diem = diem + 1
            lbldiem.text = String(diem!)
        }
        // sự va cham
        if (bom1.frame.intersects(chuot.frame)) ||
            (bom2.frame.intersects(chuot.frame)) ||
            (bom3.frame.intersects(chuot.frame)) ||
            (bom4.frame.intersects(chuot.frame)) ||
            (bom5.frame.intersects(chuot.frame)) ||
            (bom6.frame.intersects(chuot.frame)) ||
            (bom7.frame.intersects(chuot.frame)) ||
            (bom8.frame.intersects(chuot.frame)) ||
            (bom9.frame.intersects(chuot.frame)) ||
            (bom10.frame.intersects(chuot.frame)) {
            
            soundplay.stop()
            
            let path = Bundle.main.path(forResource: "toang.mp3", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            do {
                Player = try AVAudioPlayer(contentsOf: url)
                Player?.play()
                // hết nhac nó lại phát tiếp
                //Player?.numberOfLoops = -1
            }catch{
                print("lỗi rồi")
            }
            time.invalidate()
        }
    }
    @IBAction func keotha(_ sender: UIPanGestureRecognizer) {
        let tran = sender.translation(in: self.view)
        // keo thả toạ độ mới cái truc x cộng vs sự thay đổi x  tran.x , trục y cộng với sự thay đổi y
        // nếu ko công tran.x thì dùng ngón tay kéo chỉ truc y thay dổi
        // nếu ko công tran.y thì dùng ngón tay kéo chỉ truc x thay dổi
        // sender.view!.center toạ độ màn hình
        sender.view!.center = CGPoint(x: sender.view!.center.x + tran.x, y: sender.view!.center.y + tran.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
}

