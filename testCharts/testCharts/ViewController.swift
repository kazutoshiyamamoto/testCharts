//
//  ViewController.swift
//  testCharts
//
//  Created by home on 2019/03/03.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var pieChartsView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pieChartsView.usePercentValuesEnabled = true
        self.pieChartsView.centerText = "テストデータ"
        
        let dataEntries = [
            PieChartDataEntry(value: 40, label: "A"),
            PieChartDataEntry(value: 35, label: "B"),
            PieChartDataEntry(value: 25, label: "C")
        ]
        
        let dataSet = PieChartDataSet(values: dataEntries, label: "データの割合")
        dataSet.colors = ChartColorTemplates.vordiplom()
        dataSet.valueTextColor = UIColor.black
        dataSet.entryLabelColor = UIColor.black
        
        self.pieChartsView.data = PieChartData(dataSet: dataSet)
        
        view.addSubview(self.pieChartsView)
    }


}

