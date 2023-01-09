# Digital Signage Software Release Repository

## How to setup the CH Digital Signage App in a Windows 10/11

- Go to [releases section](https://github.com/Community-Hub/ch-dss-releases/releases).
- Download .exe file from latest release.
- Click on downloaded exec file to inilize installation
![image](https://user-images.githubusercontent.com/18675507/211371139-aa81fbd1-4991-4a1a-9da3-8a97e4982e33.png)
- Click on *Run* button in installation popup.
![image](https://user-images.githubusercontent.com/18675507/211379154-fbd30527-9921-49d0-bebe-d1afb8b8d12a.png)
- It will start the installation process 
![image](https://user-images.githubusercontent.com/18675507/211379640-fc36dab3-1d85-42c4-bb2b-ef9548108ddf.png)
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
  - Selec *Enabled* setting & click on *Apply* Button
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
![image](https://user-images.githubusercontent.com/18675507/211359510-514a9719-f65d-46ee-ab37-5b188fe2e43c.png)

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



