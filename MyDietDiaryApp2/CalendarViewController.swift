//
//  CalendarViewController.swift
//  MyDietDiaryApp2
//
//  Created by 高師蒼平 on 2023/02/04.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    @IBOutlet weak var calendarView: FSCalendar!
    @IBOutlet weak var addWeightButton: UIButton!
    @IBAction func addNutton(_ sender: UIButton) {
        transitionToEditorView()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCalendar()
        configureButton()
    }
    
    func configureCalendar() {
        calendarView.appearance.headerDateFormat =
        "yyyy年MM月"
        
        calendarView.appearance.todayColor = .orange
        calendarView.appearance.headerTitleColor = .orange
        calendarView.appearance.weekdayTextColor = .black
        
        calendarView.calendarWeekdayView.weekdayLabels[0].text = "日"
        calendarView.calendarWeekdayView.weekdayLabels[1].text = "月"
        calendarView.calendarWeekdayView.weekdayLabels[2].text = "火"
        calendarView.calendarWeekdayView.weekdayLabels[3].text = "水"
        calendarView.calendarWeekdayView.weekdayLabels[4].text = "木"
        calendarView.calendarWeekdayView.weekdayLabels[5].text = "金"
        calendarView.calendarWeekdayView.weekdayLabels[6].text = "土"
        
        calendarView.calendarWeekdayView.weekdayLabels[0].textColor = .red
        calendarView.calendarWeekdayView.weekdayLabels[6].textColor = .blue
    }
    
    func configureButton() {
        addWeightButton.layer.cornerRadius = addWeightButton.bounds.width / 2
    }
    
    func transitionToEditorView() {
        let storybord = UIStoryboard(name: "EditorViewController", bundle: nil)
        guard let editorViewController = storybord.instantiateInitialViewController() as? EditorViewController else { return }
        present(editorViewController, animated: true)
    }
}
