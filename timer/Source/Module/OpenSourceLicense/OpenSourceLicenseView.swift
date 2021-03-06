//
//  OpenSourceLicenseView.swift
//  timer
//
//  Created by JSilver on 18/09/2019.
//  Copyright © 2019 Jeong Jin Eun. All rights reserved.
//

import UIKit

class OpenSourceLicenseView: UIView {
    // MARK: - view properties
    let headerView: CommonHeader = {
        let view = CommonHeader()
        view.title = "opensource_license_title".localized
        return view
    }()
    
    let openSourceTextView: UITextView = {
        let view = UITextView()
        view.backgroundColor = Constants.Color.clear
        view.isEditable = false
        view.textContainer.lineFragmentPadding = 30
        view.textContainerInset = UIEdgeInsets(top: 22.adjust(), left: 0, bottom: 22.adjust(), right: 0)
        return view
    }()
    
    // MARK: - constructor
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = Constants.Color.alabaster
        
        // Set constrain of subviews
        addAutolayoutSubviews([openSourceTextView, headerView])
        openSourceTextView.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            if #available(iOS 11.0, *) {
                make.bottom.equalTo(safeAreaLayoutGuide)
            } else {
                make.bottom.equalToSuperview()
            }
        }
        
        headerView.snp.makeConstraints { make in
            if #available(iOS 11.0, *) {
                make.top.equalTo(safeAreaLayoutGuide)
            } else {
                make.top.equalToSuperview().inset(20)
            }
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
