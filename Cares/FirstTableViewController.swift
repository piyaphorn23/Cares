//
//  FirstTableViewController.swift
//  Cares
//
//  Created by DE DPU on 5/10/2559 BE.
//  Copyright © 2559 MyApplication. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var FirstTableArray = [String]()
    var SecondArray = [SecondTable]()
    var ThirdArray = [ThirdView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        FirstTableArray = ["ศีรษะ", "ลำตัวส่วนบน", "ลำตัวส่วนล่าง", "ทั่วไป"]
        
        SecondArray =
            [SecondTable(SecondTitle: ["สมองอักเสบ", "เนื้องอกในสมอง", "ปวดศีรษะจากความเครียด"]),
            SecondTable(SecondTitle: ["มะเร็งตับ", "ปอดอักเสบ", "กระเพาะอักเสบ"]),
                SecondTable(SecondTitle: ["ต่อมน้ำเหลืองอักเสบ", "กระเพาะปัสสาวะอักเสบ", "ข้อเสื่อม"]),
                SecondTable(SecondTitle: ["ไข้"])]
        
        ThirdArray = [ThirdView(ThirdViewArray: ["สมองอักเสบ (Encephalitis)\r\n\r\nเป็นโรคที่พบได้ทั้งในเด็กและผู้ใหญ่ สาเหตุเกิดจากเชื้อไวรัส ซึ่งมีอยู่หลายชนิดที่พบบ่อยคือ B Virus ซึ่งปกติอาศัยอยู่ในสัตว์เลี้ยง เช่น หมู แพะ ม้า เป็นต้น ติดต่อถึงคนนโดยยุงรำคาญ(culex)\r\n\r\nอาการ\r\n\r\nมีใช้สูงอย่างเฉียบพลัน ปวดศีรษะ อ่อนเพลีย คลื่นไส้ อาเจียน ผู้ป่วยอาจจะซึมลงเรื่อยๆ จนไม่รู้สึกตัว อาจมีอาการชักร่วมด้วย\r\n\r\nสิ่งที่ตรวจพบ\r\n\r\nไข้สูง ซึม หรือหมดสติ deep tender refax ไวกว่าปกติ อาจมีมือสั่น หรืออาการอัมพาตของแขนและขา\r\n\r\nการรักษา\r\n\r\nหากสงสัย ให้รีบส่งแพทย์ ซึ่งอาจจะวินิจฉัยโรคโดยการเจาะหลัง(lumbar puncture) เพื่อตรวจน้ำไขสันหลัง และอาจจะต้องตรวจคลื่นสมองต่อไป", "เนื้องอกในสมอง (Brain tumor)\r\n\r\nเนื้องอกในสมอง เป็นโรคที่พบได้ไม่บ่อยนัก พบได้ทั้งในเด็กและผู้ใหญ่ เนื้องอกในสมองที่พบได้ในเด็กมักเป็นเนื้องอกที่เกิดขึ้นเองภายในกระโหลกศีรษะ ส่วนในผู้ใหญ่มักเกิดจากการแพร่กระจายมาจากที่อื่น เช่น ปอด เต้านม กระเพาะลำไส้ เป็นต้น\r\n\r\nอาการ\r\n\r\nอาการศีรษะเกิดจากการที่มีเนื้องอกภายในกระโหลก อาจมีอาการเกิดขึ้นเป็นครั้งคราว มีความรุนแรงปานกลางในระยะแรกๆ และปวดข้างใด ข้างหนึ่งของศีรษะ มักเป็นข้างเดียวกับด้านที่มีเนื้องอกอยู่ มักปวดลึกๆ หรือปวดตุบๆ ก็ได้ ส่วนมากอาการจะรุนแรงในตอนเช้าๆ พอสายๆ จะทุเลาลง และจะปวดมากขึ้นขณะก้ม ไอ จาม เบ่งอุจจาระ หรือปัสสาวะ บางครั้งอาจมีอาเจียนพุ่ง ซึม เพ้อ คลั่ง ชัก แขนขาอ่อนแรง เดินเซ ตาเห็นภาพซ้อนหรือตาพร่ามัวลงเรื่อยๆ ซึ่งบางครั้งอาการเหล่านี้อาจเกิดในระยะเวลาสั้นๆ\r\n\r\nสิ่งที่ตรวจพบ\r\n\r\nอาจตรวจพบความผิดปกติของ neurologic sings การตรวจ fundi จะพบ papilledema ซึ่งช่วยในการวินิจฉัยโรคอย่างมาก\r\n\r\nการรักษา\r\n\r\nหากสงสัย ให้รีบส่งแพทย์", "ปวดศีรษะจากความเครียด (Tension headache)\r\n\r\nปวดศีระจากความเครียด เป็นอาการปวดศีรษะที่พบได้บ่อย ผู้ป่วยปวดศีรษะประมาณร้อยละ 80-90 มีสาเหตุมาจากความเครียดต่างๆ เช่น นอนไม่หลับ เครียดทำงาน หนักใช้สมองมาก เป็นต้น\r\n\r\nอาการ\r\n\r\nผู้ป่วยจะมีอาการปวดตึงกล้ามเนื้อบริเวณต้นคอรอบๆ ศีรษะ ลักษณะการปวดจะคล้ายๆ กับกล้ามเนื้อถูกบีบรัด บางคนอาจมีอาการปวดตื้อไปที่ส่วนบนของศีรษะบริเวณขมับ ใบหน้าและหน้าผาก อาการปวดเกิดขึ้นช้าๆ โดยจะไม่มีอาการนำมาก่อน ส่วนใหญ่อาการมักเป็นอยู่เพียงไม่กี่ชั่วโมงก็จะทุเลาไปเอง อาการไม่รุนแรงมากนัก แต่อาจจะทวีความรุนแรงขึ้นและจะเป็นอยู่ในระยะเวลานานๆ เป้นวัน สัปดาห์ หรือเป็นเดือน อาการปวดนี้จะไม่สามารถระงับได้ด้วยยากลุ่ม ergotamine แต่สามารถจะลดลงได้โดยยาแก้ปวด ยากล่อมประสาท ยานอนหลับหรือยาที่ทำให้กล้ามเนื้อคลายตัว\r\n\r\nสิ่งที่ตรวจพบ\r\n\r\nจะไม่มีสิ่งผิดปกติใด ความดันโลหิตอยู่ในเกณฑ์ปกติ\r\n\r\nการรักษา\r\n\r\n1. ให้ผู้ป่วยนอนหลับสักพักหนึ่งหรือนวดบริเวณต้นคอและขมับ อาการจะดีขึ้น\r\n2. ถ้าอาการไม่ดีขึ้น ให้ยาแก้ปวด Paracetamol 500 มก. ครั้งละ 1-2 เม็ด ซ้ำได้ทุก 4-6 ชั่วโมง ในกรณีจากความเครียด นอนไม่หลับ ให้ยากล่อมประสาท\r\n3. ถ้าอาการปวดรุนแรงปวดติดต่อกันนานเกิน 24 ชั่วโมง อาการปวดถี่ หรือปวดรุนแรงขึ้น แนะนำให้ไปพบแพทย์ เพื่อให้การวินิจฉัยและรักษาต่อไป"]),//user \r\n in new line
            ThirdView(ThirdViewArray: ["dddd", "eeee", "ffff"]),
            ThirdView(ThirdViewArray: ["gggg", "hhhh", "iiii"]),
            ThirdView(ThirdViewArray: ["jjjj"])]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        var DestViewController = segue.destinationViewController as! SecondTableViewController
        var SecondTableArrayTwo : SecondTable
        var ThirdAnswerArray : ThirdView
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
        
        
    }
    
    /*func colorForIndex(index: Int) -> UIColor {
        let itemCount = FirstTableArray.count - 1
        let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: 1.0, green: color, blue: 0.0, alpha: 1.0)
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
                            forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = colorForIndex(indexPath.row)
    }*/
    
}
