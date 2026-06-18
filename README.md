## Get Started

DigitalOcean provides a sample Dockerfile application you can deploy to App Platform. You can deploy the app without modification, or add it to your GitHub account so that you can customize it and use automatic redeployments when you make changes.

**Note**: Deploying a sample application may result in charges for the use of DigitalOcean resources.

### Requirements

* A DigitalOcean account. You can [sign up in the Control Panel](https://cloud.digitalocean.com/registrations/new).

## Deploy the App

Click **Deploy to DigitalOcean** to deploy the app to App Platform. If prompted, log in to your DigitalOcean account.

[![Deploy to DigitalOcean](https://www.deploytodo.com/do-btn-blue.svg)](https://cloud.digitalocean.com/apps/new?repo=https://github.com/digitalocean/sample-dockerfile/tree/main)

App Platform opens the **Create an App** page. To deploy the app without modification, complete the wizard, and then click **Create app**.

To customize the app or use automatic redeployments, click the **Git source** link **[digitalocean/sample-dockerfile](https://github.com/digitalocean/sample-dockerfile)**. When the GitHub repo opens, click the **Fork** button in the upper right, and then follow the on-screen instructions. To learn more about forking repos, see the [GitHub documentation](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo).

After forking the repo, you can view the same README in your own GitHub org, for example, at `https://github.com/<your-org>/sample-dockerfile`.

To deploy the new repo, go to the [App Platform page in the Control Panel](https://cloud.digitalocean.com/apps) and click the **Create App** button. On the **Create an App** page, leave GitHub selected. Under **Repository**, select your newly forked repo. Ensure that your branch is set to **main** and **Autodeploy** is selected, and then click **Next**.

The page updates and displays the **Resource settings** for your app. Click **Edit** beside a setting to make changes, such as adding an HTTP route.

Below the **Resource settings**, you can add a database to your app if needed, update the default datacenter region (App Platform selects the region closest to you by default), or connect the app to the VPC network. Unless your app needs to interface with external services, the region you select does not affect performance because all App Platform apps are routed through a global CDN.

Provide a name for your app and then review your app's settings and monthly cost. When finished, click **Create app**.

The **Activity** tab opens and shows the progress of the deployment. It can take a few minutes for the deployment to finish.

When the deployment completes, click the **Live App** button to open the home page of your running application in a new tab.

## Make Changes to Your App

If you forked the repo, you can make changes to your copy of the sample app. Pushing a new change automatically redeploys the app to App Platform with zero downtime.

Here's an example code change you can make for this app:

* Edit `main.go` and replace the "Hello!" greeting on line 31 with a different greeting.
* You can commit the changes to the `main` branch or create a new branch for your change and then merge the branch to `main` after review.
* Go to the [Control Panel](https://cloud.digitalocean.com/apps) and navigate to your sample app. You should see a progress indicator for the automatic redeployment that your changes triggered.
* Once the deployment completes, click the **Live App** link in the header to see your updated application running. You may need to force refresh the page in your browser (e.g. using **Shift** + **Reload**).

## Learn More

To learn more about App Platform and how to manage and update your application, see [the App Platform documentation](https://docs.digitalocean.com/products/app-platform/).

## Delete the App

When you no longer need this sample application, you can delete it as follows:

1. Go to the [App Platform page in the Control Panel](https://cloud.digitalocean.com/apps).
2. Navigate to the sample app.
3. On the **Settings** page, click **Destroy**.

**Note**: If you do not delete your app, charges for using DigitalOcean services continue to accrue.
