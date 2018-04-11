//
//  AnimalesTableView.swift
//  Animales
//
//  Created by diego castelazo on 27/03/18.
//  Copyright © 2018 diego castelazo. All rights reserved.
//

import UIKit

class AnimalesTableView: UIView, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var animalesTable: UITableView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public func commonInit(){
        let view = self.loadNib()
        view.frame = bounds
        self.addSubview(view)
        self.animalesTable.delegate = self
        self.animalesTable.dataSource = self
        self.animalesTable.register(UINib(nibName: "AnimalesTableViewCell", bundle: nil), forCellReuseIdentifier: "animalesCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell")
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0;
    }

}
