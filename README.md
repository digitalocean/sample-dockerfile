# Getting Started #

These steps will get this sample application running for you using DigitalOcean.

**Note: Following these steps will result in charges for the use of DigitalOcean services**

## How to Deploy this Sample App (without forking the Repo) ##

Click the button below to deploy the app to the DigitalOcean App Platform. If you don't have a DigitalOcean account yet, don't worry! After clicking the button you'll be walked through our account creation process.

 [![Deploy to DO](https://mp-assets1.sfo2.digitaloceanspaces.com/deploy-to-do/do-btn-blue.svg)](https://cloud.digitalocean.com/apps/new?repo=https://github.com/digitalocean/sample-dockerfile/tree/main)
 
If you plan to update this Sample App, continue to the next section instead of using the [Deploy to DigitalOcean button](https://www.digitalocean.com/docs/app-platform/how-to/add-deploy-do-button/) above.

## How to Deploy this Sample App in your own Repo ## 

To use all the features of App Platform, you need to be running against your own copy of this application. 

1. First, click the Fork button near the top right of this window and follow the on-screen instructions. In this case, you'll be forking this repo as a starting point for your own app (see [Github documentation](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) to learn more about forking repos). After forking the repo, you should now be viewing this README in your own github org (e.g. `https://github.com/<your-org>/sample-dockerfile`)
2. Follow the steps for creating an App Platform app, [which are documented here](https://www.digitalocean.com/docs/app-platform/how-to/create-apps/). 

## Making Changes to Your App ##

As long as you:

1. Had deployed the app from your own repo
2. Left the default Autodeploy option enabled when you first launched this app

You can now make code changes and see them automatically reflected in your live application. During these automatic deployments, your application will never pause or stop serving requests because the App Platform offers zero-downtime deployments.

## Deleting the App #

When you no longer need this sample application running live, you can delete it by following these steps:
1. Visit the Apps control panel at https://cloud.digitalocean.com/apps
1. Navigate to the sample-dockerfile app
1. Choose "Settings"->"Destroy"

This will delete the app and destroy any underlying DigitalOcean resources

**Note: If you don't delete your app, charges for the use of DigitalOcean services will continue to accrue.**

## Learn More about DigitalOcean App Platform ##

You can learn more about the App Platform and how to manage and update your application at https://www.digitalocean.com/docs/app-platform/.
