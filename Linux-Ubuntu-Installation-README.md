# Digital Signage Software Release Repository

## How to setup the CH Digital Signage App in a Windows 10/11

- Go to [releases section](https://github.com/Community-Hub/ch-dss-releases/releases).
- Download .exe file from latest release.
- Click on downloaded exec file to inilize installation.
![image](https://user-images.githubusercontent.com/18675507/211371139-aa81fbd1-4991-4a1a-9da3-8a97e4982e33.png)
- Click on *Run* button in installation popup.
![image](https://user-images.githubusercontent.com/18675507/211382740-3d73b13f-0b3e-41b1-a5fb-ef286cb44680.png)

- It will start the installation process.
![image](https://user-images.githubusercontent.com/18675507/211383021-8a1f074a-e97a-496b-b7f0-03365c71e0e3.png)

- After complete the installalation it will auto start the application to setup the display configuration

*NOTE: Uninstallation of previous version is not needed as every new installation will overide the previous installed version.*

---
### Turn Off Windows Lock screen

  - Click on Windows Start
  - Search for : *Group policy*
  - Click on *Edit Group Policy*, [see below image]
![image](https://user-images.githubusercontent.com/18675507/211323253-7889d831-40e2-4c4f-9b04-dec953d0074f.png)
  - Navigate to *Computer Configuration* > *Administrative Templates* > *Control Panel* > *Personalization*
  - In Right section select *Do not display the lock screen* setting
  - And then click on *policy setting*
![image](https://user-images.githubusercontent.com/18675507/211336156-717a8b3f-c358-4523-8350-b2e45a76acda.png)
  - Select *Enabled* setting & click on *Apply* Button
![image](https://user-images.githubusercontent.com/18675507/211340338-03708e4e-d3ed-4782-a5c3-336341000f85.png)


---
### Turn Off Windows Auto Update
  - In the same *Group policy* Window, Navigate to Computer Configuration > Administrative Templates > Windows Components > Windows Update
  - Click on Windows Start
  - Search for : *Services*
  - Open the *Services*
![image](https://user-images.githubusercontent.com/18675507/211358532-d1e7feb2-f549-4cf0-ae84-39e62b918aec.png)
  - Search for *Windows Update*
  - Right Click on *Windows Update* & select *Properties*
![image](https://user-images.githubusercontent.com/18675507/211343602-f135b38c-38b3-49a6-a8c6-5c059a5b180b.png)
  - Inside *Windows Update Properties* , select *Disabled* in *Statrup type*
  - Click *Apply* to disable the windows update
  - ![image](https://user-images.githubusercontent.com/18675507/211359510-514a9719-f65d-46ee-ab37-5b188fe2e43c.png)

---
### Schedule Task/Cron to Reboot System *(Optional)*
  - Click on Windows Start
  - Search for : *Task Scheduler*
![image](https://user-images.githubusercontent.com/18675507/211564172-6efd5ca9-3911-4b84-8c6e-31b40ea537e0.png)
  - Expand *Task Schedular (Local)* and Select *Task Schedular Library* &
  - Right click on it, it will open a contex menu
  - Click on *New Folder*
  - ![create-new-folder](https://user-images.githubusercontent.com/18675507/211566677-149e9fc4-e65d-4669-96c0-67581337b7cd.png)
  - Set Folder Name as *Reboot System* [you may give any user friendly name, it will be easy to search for future reference]
  - ![set-folder-name](https://user-images.githubusercontent.com/18675507/211593398-3c4cda4a-d314-4785-b7da-4649a9f007e4.png)
  - After creating folder, it will be visible under *Task Schedular Library*
  - Click on newly created folder [*Reboot System*] & then select *Create Task* in right section (*Action*)
  - ![image](https://user-images.githubusercontent.com/18675507/211597653-a18d3144-153b-4ae9-8490-c7c87a057734.png)
  - It will open a popup, here mainly we'll set General, Triggers & Action tabs, then finally click on *OK* button to save the task.
  - First, in *General* tab, fill the fields as given in the below image
  - ![image](https://user-images.githubusercontent.com/18675507/211607249-4b9bc7ef-70ae-4e7b-8750-abf0607659ac.png) 

  - Next in *Triggers* tab, click on *New* button
  - ![set-trigger](https://user-images.githubusercontent.com/18675507/211616998-1f982a8d-12aa-46b3-9844-fe914356f798.png)
  - In *New Trigger* popup fill the fields as per below image and then click *OK*
  - ***NOTE: In below image it is showing example of a Daily task to execute at 08:00AM everyday starting from 6th Jan 2023. We can set time as per requirement.***
  - ![image](https://user-images.githubusercontent.com/18675507/211625742-12a1cbd9-4f06-4058-b612-430cacd58095.png)
  - Once it new trigger is saved it will be visible in the *Trigger* list 
  - ![image](https://user-images.githubusercontent.com/18675507/211619445-d92eb4a1-76f7-4521-8b7e-5cd9f8b6f830.png)
  - Next in *Actions* tab, click on *New* button
  - ![Screenshot (105)](https://user-images.githubusercontent.com/18675507/211626900-3d81e747-4624-424c-9f55-0dd06e881291.png)
  - In *New Action* popup, fill action details as given in the below image. *NOTE: In Action, it is defining a restart program/script as shutdown /r*. Once all information is filled then click on *OK* button to save the action.
  - ![image](https://user-images.githubusercontent.com/18675507/211626281-521c46fb-e458-49d6-885d-dddc695a78d0.png)
  - ![Screenshot (108)](https://user-images.githubusercontent.com/18675507/211626409-d1a5ef32-aed4-453e-aa7f-5c4064cda86e.png)
  - Once task get created, it will listed as following image. *NOTE: To make changes in task, simply double click on the task & it will open the edit popup having the same option as above.*
  - ![task-created](https://user-images.githubusercontent.com/18675507/211626477-9788c30a-24b1-4ce4-9a1d-922314ae6575.png)
---
### Remove Windows User password *(Optional)*
*NOTE: This step is only required where Windows user need a password to login*
  - Click on Windows Start
  - Search for : *Cmd* or *Command Prompt*
  - Right click on Cmd & select *Run as Administrator*
![image](https://user-images.githubusercontent.com/18675507/211362937-fa9ea69f-3b55-4e59-b91d-bbffce85a28b.png)
  - Write *net user* & hit enter
  - It will list all user in the system select the user in which our application will
  - Write **net user Administrator ""** here Administrator is an example you may have different user. Double quote means no-password.

![image](https://user-images.githubusercontent.com/18675507/211365727-08f13f2f-d35d-408a-bb89-b524b9b96f4f.png)

*NOTE: After performing all steps we need to restart the system to apply all the changes.*

---

## How to setup the CH Digital Signage App in a Linux System (like Debian/Ubuntu)

*NOTE: If you're installing this application (AppImage) for the first time on the system, an additional software package will be needed which can be installed by following below steps.*

*Before installing the new version of the application make sure that you have uninstalled the legacy version. Check [this section](https://github.com/Community-Hub/ch-dss-releases#uninstalling-steps-for-legacy-version) for instructions.*

  - Open terminal
  - Paste command: *sudo apt install libfuse2*
  - Press enter

---
Following steps will be same for all the following installation
---

- Go to [releases section](https://github.com/Community-Hub/ch-dss-releases/releases).
- Download .AppImage file from latest release.
![Screenshot 2022-08-17 121543](https://user-images.githubusercontent.com/101592178/185068720-5237c3c7-0992-4874-a711-641417aa04d8.png)

- Change downloaded file permission.
  - Right click on file and selct properties option. <br/><br/>
![image (2)](https://user-images.githubusercontent.com/101592178/185065315-4958de62-8bb4-4b2d-a441-a28ac3a2fc9e.png)

  - Update file permission (Ref. image). <br/><br/>
![image (3)](https://user-images.githubusercontent.com/101592178/185065441-a184c595-b28a-4867-b797-0e0d05e3c09b.png)

- Right click and select run option. <br/><br/>
![image (4)](https://user-images.githubusercontent.com/101592178/185065650-015ee8fb-beb1-44be-b843-f1c9be30ca12.png)

<br/><br/>
`NOTE: Application will be added in startup program by setup itself, but still team should verify it once.`
<br/><br/>
- Verify startup entry for application
  - Click on window button and search startup application. <br/><br/>
![image (5)](https://user-images.githubusercontent.com/101592178/185066190-b7c5a483-1c1f-421f-a704-096626ccfd8f.png)

  - There should be application entry in list(Ref image) <br/><br/>
![image (6)](https://user-images.githubusercontent.com/101592178/185066546-13ae9357-1af4-4bb5-a310-5f004a20cb69.png)


---
Uninstalling steps (for legacy version)
---
  - Open terminal
  - Paste command: sudo apt-get remove media-player
  - Press enter <br/><br/>
![Screenshot (28)](https://user-images.githubusercontent.com/101592178/188141778-9ff89e77-e5d9-4b50-acf0-4a7b39d8b4b9.png)
  - press 'Y' and enter <br/><br/>
![Screenshot (29)](https://user-images.githubusercontent.com/101592178/188141923-5e5173c0-d073-4822-85dc-186f0e827d99.png)



