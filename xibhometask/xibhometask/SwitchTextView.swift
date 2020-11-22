//
//  SwitchTextView.swift
//  xibhometask
//
//  Created by kinitaleino on 11/21/20.
//  Copyright © 2020 kinitaleino. All rights reserved.
//

import UIKit

@IBDesignable
class SwitchTextView: UIView{
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var myText: UITextField!
    
    override init(frame: CGRect){
        super.init(frame:frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        setupViews()
    }
    
    private func setupViews() {
        let xibView = loadViewFromXib()
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }
    private func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "SwitchTextView" , bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first! as! UIView
    }
    
}
