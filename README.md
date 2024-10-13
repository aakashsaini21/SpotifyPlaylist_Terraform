# SpotifyPlaylist_Terraform
Created Spotify playlists using Terraform


![image](https://github.com/user-attachments/assets/6e5a784b-fc70-4d6e-87e9-b055fc3b0e1d)


## Prerequisites

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (without premium access)
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **Spotify Provider for Terraform**: Install and configure the Spotify provider for Terraform.
6. **VS Code Editor**: Recommended for editing Terraform files.


STEPS:
### 1. Creating Terraform Code
  Start by setting up your Terraform project.
  
  1. Create a new directory for your Terraform project and navigate to it in your terminal.
  2. Create a file named `providers.tf`.

### 2. Define Provider
  In `providers.tf`, define the Spotify provider
  
### 3. Need API Key
  To interact with Spotify's API, you need a Client ID and Client Secret.
  
### 4. Start with App Creation

1. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
2. Log in with your Spotify account.
3. Click on "Create an App".

   ![Untitled](https://github.com/user-attachments/assets/b28b7912-7148-439a-8e7b-6d99f88c71b3)

4. Fill in the required details and create the app.
   Name And Description
   *Redirect URIs: http://localhost:27228/spotify_callback

#### 5. Click on Settings and note down the Client ID and Client Secret.

#### 6. Enter Details
Create a file named .env to store your Spotify application's Client ID and Secret:

SPOTIFY_CLIENT_ID=<your_spotify_client_id>

SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>

#### 7. ### Run the Spotify Auth App and Get the API Key

Make sure Docker Desktop is running, and start the authorization proxy server:

```
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
```


![Untitled](https://github.com/user-attachments/assets/1072090b-8077-4d4c-b564-1f8f3b24f83d)

#### You should get an “Authorization Successful” Message.


### Continue Creating Terraform Code

### 8. Initialize and Apply Terraform Configuration

1. Initialize the Terraform configuration:
    
    ```
    terraform init
    
    ```
    
2. Apply the Terraform configuration:
    
    ```
    terraform apply
    
    ```
    

### 11. Verify Playlists on Spotify

After applying the Terraform configuration, log in to your Spotify account and verify that the playlists have been created and populated with the specified tracks.






















