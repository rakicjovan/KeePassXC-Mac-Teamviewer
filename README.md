# KeePassXC-Mac-TeamViewer  
AppleScript for opening custom TeamViewer URIs to directly connect to clients.  

## What It Does  
This script allows you to save a TeamViewer URL in KeePassXC for MacOS in the format `tv://<ClientID>` and, upon double-clicking the URL, automatically launches TeamViewer to establish a connection with the specified Client ID.  

## Setup Instructions  

### Option 1: Clone and Compile the Script  
1. Clone this repository:  
   ```bash  
   git clone https://github.com/rakicjovan/KeePassXC-Mac-Teamviewer 
2. Open the script in AppleScript Editor and export it as an `.app` file.  

### Option 2: Download Precompiled File  
- Download the precompiled `.app` file from the [Releases](https://github.com/<your-repo-url>/releases).  

### Configure the Custom URI Handler  
To make the script handle `tv://` URIs:  

1. Use a tool like **SwiftDefaultApps** to associate the `tv://` URI scheme with the `.app` file you compiled or downloaded.  
   - Download SwiftDefaultApps: [SwiftDefaultApps](https://github.com/Lord-Kamina/SwiftDefaultApps).  
2. Follow the instructions in SwiftDefaultApps to map `tv://` to your `.app` file.  

