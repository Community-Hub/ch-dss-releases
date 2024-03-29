# Digital Signage Software Release Repository 


## How to setup the CH Digital Signage App in a Linux System (like Debian/Ubuntu)
[<img src="https://user-images.githubusercontent.com/18675507/212409634-ca51a45e-86e8-4bc6-8d55-a940ed20a7dc.png" height="30" />](https://user-images.githubusercontent.com/18675507/212409634-ca51a45e-86e8-4bc6-8d55-a940ed20a7dc.png) | [<img src="https://user-images.githubusercontent.com/18675507/212412466-b679ba7b-4085-49e1-bfc7-9410db93af51.png" height="30" />](https://user-images.githubusercontent.com/18675507/212412466-b679ba7b-4085-49e1-bfc7-9410db93af51.png)

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



