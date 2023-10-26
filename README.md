# How to setup the CH Digital Signage App in a Windows 10/11 [<img src="https://user-images.githubusercontent.com/18675507/212406931-e970393b-8c59-42d2-8178-26266c548859.png" width="30"/>](https://user-images.githubusercontent.com/18675507/212406931-e970393b-8c59-42d2-8178-26266c548859.png)

---

## 1. Download and install the application from Community Hub GitHub releases

- Go to [releases section](https://github.com/Community-Hub/ch-dss-releases/releases).
- Download .exe file from latest release (newest will be at top).
- Click on downloaded exec file from Downloads folder to begin the installation.
    
    ![https://user-images.githubusercontent.com/18675507/211371139-aa81fbd1-4991-4a1a-9da3-8a97e4982e33.png](https://user-images.githubusercontent.com/18675507/211371139-aa81fbd1-4991-4a1a-9da3-8a97e4982e33.png)
    
- Click on *Run* button in installation popup.
    
    ![https://user-images.githubusercontent.com/18675507/211382740-3d73b13f-0b3e-41b1-a5fb-ef286cb44680.png](https://user-images.githubusercontent.com/18675507/211382740-3d73b13f-0b3e-41b1-a5fb-ef286cb44680.png)
    
- It will start the installation process. It should only take a few moments.
    
    ![https://user-images.githubusercontent.com/18675507/211383021-8a1f074a-e97a-496b-b7f0-03365c71e0e3.png](https://user-images.githubusercontent.com/18675507/211383021-8a1f074a-e97a-496b-b7f0-03365c71e0e3.png)
    
- After the installation completes, it will auto-start the application to setup the display configuration

 ***NOTE: Uninstallation of the previous version is not needed as every new installation will override the previously installed version.***

  **Setup the display configuration**
-------------------------------------------
  - In the setup screen, we need to select the community & the respective display to open the presentations. The **Remember this display on next start** option is used to remember the selected community/display combination for the next time we open this application (it will directly open the presentation without opening the setup screen.)
    ![image](https://github.com/Community-Hub/ch-dss-releases/assets/18675507/398fec47-e09c-4e7e-a0c1-ccdc0d854296)

  - **There are some shortcuts given to operate the application, the popup will open by pressing Ctrl+H or F1 key.**
    ![image](https://github.com/Community-Hub/ch-dss-releases/assets/18675507/728d7667-a32f-43ee-ba53-626200c42303)


---

## 2. Turn Off Windows Lock screen

- Click on Windows Start
- Search for : *Group policy*
- Click on *Edit Group Policy*, [see below image]
    
    ![https://user-images.githubusercontent.com/18675507/211323253-7889d831-40e2-4c4f-9b04-dec953d0074f.png](https://user-images.githubusercontent.com/18675507/211323253-7889d831-40e2-4c4f-9b04-dec953d0074f.png)
    
- Navigate to *Computer Configuration* > *Administrative Templates* > *Control Panel* > *Personalization*
- In Right section select *Do not display the lock screen* setting
- And then click on *policy setting*
    
    ![https://user-images.githubusercontent.com/18675507/211336156-717a8b3f-c358-4523-8350-b2e45a76acda.png](https://user-images.githubusercontent.com/18675507/211336156-717a8b3f-c358-4523-8350-b2e45a76acda.png)
    
- Select *Enabled* setting & click on *Apply* Button
    
    ![https://user-images.githubusercontent.com/18675507/211340338-03708e4e-d3ed-4782-a5c3-336341000f85.png](https://user-images.githubusercontent.com/18675507/211340338-03708e4e-d3ed-4782-a5c3-336341000f85.png)
    

---

## 3. Turn off the Windows Auto Updates

- In the same *Group policy* Window, Navigate to Computer Configuration > Administrative Templates > Windows Components > Windows Update
- Click on Windows Start
- Search for : *Services*
- Open the *Services app*
    
    ![https://user-images.githubusercontent.com/18675507/211358532-d1e7feb2-f549-4cf0-ae84-39e62b918aec.png](https://user-images.githubusercontent.com/18675507/211358532-d1e7feb2-f549-4cf0-ae84-39e62b918aec.png)
    
- Navigate to *Windows Update*
- Right Click on *Windows Update* & select *Properties*
    
    ![https://user-images.githubusercontent.com/18675507/211343602-f135b38c-38b3-49a6-a8c6-5c059a5b180b.png](https://user-images.githubusercontent.com/18675507/211343602-f135b38c-38b3-49a6-a8c6-5c059a5b180b.png)
    
- Inside *Windows Update Properties* , select *Disabled* in *Startup type*
- Click *Apply* to disable the windows update

![https://user-images.githubusercontent.com/18675507/211359510-514a9719-f65d-46ee-ab37-5b188fe2e43c.png](https://user-images.githubusercontent.com/18675507/211359510-514a9719-f65d-46ee-ab37-5b188fe2e43c.png)

---

## 4. Schedule Task/Cron to Reboot System (if needed)

This will restart the computer. We recommend having the computer restart once per day to clear the cache and ensure the display runs smoothly.

- Click on Windows Start
- Search for : *Task Scheduler*
    
    ![https://user-images.githubusercontent.com/18675507/211564172-6efd5ca9-3911-4b84-8c6e-31b40ea537e0.png](https://user-images.githubusercontent.com/18675507/211564172-6efd5ca9-3911-4b84-8c6e-31b40ea537e0.png)
    
- Expand *Task Scheduler (Local)* and Select *Task Scheduler Library* &
- Right click on it, it will open a context menu
- Click on *New Folder*

![https://user-images.githubusercontent.com/18675507/211566677-149e9fc4-e65d-4669-96c0-67581337b7cd.png](https://user-images.githubusercontent.com/18675507/211566677-149e9fc4-e65d-4669-96c0-67581337b7cd.png)

- Set Folder Name as *Reboot System* [you may give any user friendly name, it will be easy to search for future reference]

![https://user-images.githubusercontent.com/18675507/211593398-3c4cda4a-d314-4785-b7da-4649a9f007e4.png](https://user-images.githubusercontent.com/18675507/211593398-3c4cda4a-d314-4785-b7da-4649a9f007e4.png)

- After creating folder, it will be visible under *Task Scheduler Library*
- Click on newly created folder [*Reboot System*] & then select *Create Task* in right section (*Action*)

![https://user-images.githubusercontent.com/18675507/211597653-a18d3144-153b-4ae9-8490-c7c87a057734.png](https://user-images.githubusercontent.com/18675507/211597653-a18d3144-153b-4ae9-8490-c7c87a057734.png)

- It will open a popup, here mainly we'll set General, Triggers & Action tabs, then finally click on *OK* button to save the task.
- First, in *General* tab, fill in the fields as they appear in the below image
    - Name: Reboot Schedule
    - Select: *Run whether user is logged on or not and Do not store password. The task will only have access to local computer resources.*

![https://user-images.githubusercontent.com/18675507/211607249-4b9bc7ef-70ae-4e7b-8750-abf0607659ac.png](https://user-images.githubusercontent.com/18675507/211607249-4b9bc7ef-70ae-4e7b-8750-abf0607659ac.png)

- Next in *Triggers* tab, click on *New* button

![https://user-images.githubusercontent.com/18675507/211616998-1f982a8d-12aa-46b3-9844-fe914356f798.png](https://user-images.githubusercontent.com/18675507/211616998-1f982a8d-12aa-46b3-9844-fe914356f798.png)

- In *New Trigger* popup fill the fields as per below image and then click *OK*
- ***NOTE: In below image it is showing example of a Daily task to execute at 08:00AM everyday starting from 6th Jan 2023. You can set the time to whenever you need.***
- 
    
    ![https://user-images.githubusercontent.com/18675507/211625742-12a1cbd9-4f06-4058-b612-430cacd58095.png](https://user-images.githubusercontent.com/18675507/211625742-12a1cbd9-4f06-4058-b612-430cacd58095.png)
    
- Once the new trigger has been saved, it will be visible in the *Trigger* list

![https://user-images.githubusercontent.com/18675507/211619445-d92eb4a1-76f7-4521-8b7e-5cd9f8b6f830.png](https://user-images.githubusercontent.com/18675507/211619445-d92eb4a1-76f7-4521-8b7e-5cd9f8b6f830.png)

- Next in the *Actions* tab, click on *New* button

![https://user-images.githubusercontent.com/18675507/211626900-3d81e747-4624-424c-9f55-0dd06e881291.png](https://user-images.githubusercontent.com/18675507/211626900-3d81e747-4624-424c-9f55-0dd06e881291.png)

- In *New Action* popup, fill action details as given in the below image. *NOTE: In Action, we are defining a restart program/script as shutdown /r*. Once all information is filled then click on *OK* button to save the action.

![https://user-images.githubusercontent.com/18675507/211626281-521c46fb-e458-49d6-885d-dddc695a78d0.png](https://user-images.githubusercontent.com/18675507/211626281-521c46fb-e458-49d6-885d-dddc695a78d0.png)

![https://user-images.githubusercontent.com/18675507/211626409-d1a5ef32-aed4-453e-aa7f-5c4064cda86e.png](https://user-images.githubusercontent.com/18675507/211626409-d1a5ef32-aed4-453e-aa7f-5c4064cda86e.png)

- Once the task gets created, it will be listed as shown in the following image. *NOTE: To make changes in task, simply double click on the task & it will open the edit popup having the same option as above.*

![https://user-images.githubusercontent.com/18675507/211626477-9788c30a-24b1-4ce4-9a1d-922314ae6575.png](https://user-images.githubusercontent.com/18675507/211626477-9788c30a-24b1-4ce4-9a1d-922314ae6575.png)

---

## 5. Remove Windows User password (if needed)

*NOTE: This step is only required where Windows user has set a password already to login. If it is a new computer, you should leave the password field empty during setup to bypass this step later.*

- Click on Windows Start
- Search for: *Settings*
- Click ********Accounts > Sign-in options********

![image](https://user-images.githubusercontent.com/18675507/212406046-c8376b02-a3d0-412b-8105-b07cdceffadc.png)

- Click **********Password, then********** select ******Change******

![image](https://user-images.githubusercontent.com/18675507/212406096-50547cf9-1acd-48f2-8e09-af5f6ea26bf3.png)

- Enter your existing password
- Under ************New Password************, leave it empty. Leave *********************Confirm New Password********************* empty as well.
- Click *******Apply.*******

*NOTE: After performing all steps we need to restart the system to apply all the changes.*

Sure! Here are the instructions to auto-hide the Windows taskbar using Markdown with embedded images:

## 6. Turn On Autohide taskbar.

Step 1: Right-click on an empty area of the taskbar.  
![Right-click on an empty area](https://github.com/Community-Hub/ch-dss-releases/assets/18675507/4689f0c0-10e1-4b4e-8822-0bf28bb59ec3)

Step 2: From the context menu that appears, select "Taskbar settings."  
![Select Taskbar settings](https://github.com/Community-Hub/ch-dss-releases/assets/18675507/43bd04c8-0073-4bde-b8f0-80a9694f6f4f)


Step 3: In the Taskbar settings window, locate the "Automatically hide the taskbar in desktop mode" option and toggle the switch to the "On" position.  
![Toggle Automatically hide the taskbar](https://github.com/Community-Hub/ch-dss-releases/assets/18675507/674f7c50-fdfd-425d-94fb-63d4cd686b1d)

Step 4: Optionally, you can also enable the "Automatically hide the taskbar in tablet mode" option if you use a device with touch functionality and want the taskbar to hide in tablet mode as well.  

Step 5: Once enabled, the taskbar will automatically hide when not in use. To access it, move your cursor to the bottom of the screen, and it will reappear.

## 7. Turn off Notifications

- Step 1: Open Settings
- Step 2: Click on System
- Step 3: Click on Notifications & actions
- Step 4: Uncheck the items as suggested below screenshot

![image](https://github.com/Community-Hub/ch-dss-releases/assets/18675507/d43f53bd-7062-444a-8560-4799031b80d2)

