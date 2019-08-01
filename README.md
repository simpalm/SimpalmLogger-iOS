# SimpalmLogger

# www.simpalm.com

SimpalmLogger is a framework which can be used to generate log file for a particular session of an application . It generates entire details which helps iOS developer to debug and detect the issues which may encounter with in certain flow of an  application. One single log can generate details like :

    TimeStamp | Developer's selected Log Category | Controller | Line of Log | Entire path to ViewController | Developers Messages

    2019–07–30 07:51:5011 [☠️][ViewController.swift] Line:18 19/Users/amansinha/Desktop/Frameworks/LoggerApp/LoggerApp/ViewController.swift Message: Simpalm log1
   
This Framework supports iOS 10 and above and designed in swift only. It can generate the given logs while debugging the application in Xcode's output console.

We can get this log file for current session by two ways :

     By connecting device with iTunes. The process is mentioned below.
 
     By sending that log file as attachment through email.

# USE

Just drag and drop the SimpalmLogger into your application.

     Add framework in project  -> General ->Embedded Binaries.

Then import SimpalmLogger framework in your file like:

      import SimpalmLogger
     
Then just write your log like:

        if let err = error{
            Logger.log(event: .e, message: "Login Error")
            …..
            }
        else{
            Logger.log(event: .i, message: "Login Successful")
            …..
            }
            and we can do like Logger.log(event: .e) too.
            
We are having event Log categories like 

         .e →error , .i -> info , .v →verbose , .d → debug , .w →warning, .s →severe .
         
         
# How to get Log files

# 1. From iTunes : 

First we need to import SimpalmLogger in AppDelegate.

Then in applicationWillTerminate we have to write only this code:

          Logger.writeToLogFile(logs: Logger.fileContent)
          
          Note: Set UIFileSharingEnabled to 'Yes' in app's info.plist 
          
Run that application throughout that session then terminate it .

After connecting the device with iTunes on system you can fetch that Log.txt file from File Sharing to your system. Great!


# 2. Through Email

You have to follow few simple steps to get the Log file in you email address 

Steps:

        Method :
        
        Logger.sendEmail(controller: self, recipients: ["example@***.com"])
        
        
Call above method in your ViewController where ever you want and on that ViewController then you have to import MessageUI framework then implement MFMailComposeViewControllerDelegate and call its delegate method thats it. 
        
      
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?){
        - - - 
        }
        
I hope you will enjoy while working with Logs !
