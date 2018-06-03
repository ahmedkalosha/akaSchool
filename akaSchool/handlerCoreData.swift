//
//  handlerCoreData.swift
//  akaSchool
//
//  Created by Ahmed on 5/28/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class HandlerCoreData {
    
    //MARK: - objectCoreDAta
    
  class  func getObjectCoreData() ->NSManagedObjectContext {
        
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
   return appDelegate.persistentContainer.viewContext
        
    }
    
    //MARK: - Save Core Data
    
    class   func SaveData(dic:[String:String])  {
        
        let context = getObjectCoreData()
        let newStudent = NSEntityDescription.insertNewObject(forEntityName: "Students", into: context)
        

    newStudent.setValue(dic["name"]!, forKey: "studentName")
        newStudent.setValue(Int16(dic["age"]!) , forKey: "age")
        newStudent.setValue(dic["favSubject"]!, forKey: "favSubject")
        do{
            try  context.save()}
        catch{
            print("error")
        }
    }
    
    //MARK: - get data
    
    class func getData()->[Students]? {
        
        let context = getObjectCoreData()
        var studentList :[Students]?
        
        do {
      studentList = try  context.fetch(Students.fetchRequest())
          
        }catch{
            print("error")

        }
        return studentList

    }
    
    //MARK: - Search Data in Coredata
    
    
    
    
    //MARK: - delete Data in Coredata

    
    
}
