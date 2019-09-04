//
//  FooterButton.swift
//  timer
//
//  Created by JSilver on 04/08/2019.
//  Copyright © 2019 Jeong Jin Eun. All rights reserved.
//

import UIKit

class FooterButton: UIButton {
    enum FooterButtonType {
        case normal
        case highlight
        
        var textColor: UIColor {
            switch self {
            case .normal:
                return Constants.Color.carnation
            case .highlight:
                return Constants.Color.white
            }
        }
        
        var backgroundColor: UIColor {
            switch self {
            case .normal:
                return Constants.Color.gallery
            case .highlight:
                return Constants.Color.carnation
            }
        }
    }
    
    // MARK: - properties
    var type: FooterButtonType
    var title: String?

    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                backgroundColor = type.backgroundColor
            } else {
                backgroundColor = Constants.Color.gallery
            }
        }
    }
    
    private var hightlightDiff: Int = 20
    
    // MARK: - constructor
    init(title: String?, type: FooterButtonType) {
        self.type = type
        self.title = title
        super.init(frame: .zero)
        
        initLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height * 0.12
    }
    
    // MARK: - private method
    private func initLayout() {
        backgroundColor = type.backgroundColor
        layer.shadow(alpha: 0.04, offset: CGSize(width: 0, height: 6.adjust()), blur: 6)
        setTitle(title)
    }

    private func setTitle(_ title: String?) {
        var attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: type.textColor,
            .font: Constants.Font.ExtraBold.withSize(15.adjust())
        ]
        setAttributedTitle(NSAttributedString(string: title ?? "", attributes: attributes), for: .normal)
        
        attributes[.foregroundColor] = Constants.Color.silver
        setAttributedTitle(NSAttributedString(string: title ?? "", attributes: attributes), for: .disabled)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        backgroundColor = backgroundColor! - hightlightDiff
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        backgroundColor = backgroundColor! + hightlightDiff
    }
}
