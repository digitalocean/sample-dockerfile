## Get Started

This guide describes how to use DigitalOcean App Platform to run a sample Dockerfile application.

**Note**: Following these steps may result in charges for the use of DigitalOcean services.

### Requirements

* You need a DigitalOcean account. If you do not already have one, first [sign up](https://cloud.digitalocean.com/registrations/new).

## Deploy the App

Click the following button to deploy the app to App Platform. If you are not currently logged in with your DigitalOcean account, this button prompts you to to log in.

[![Deploy to DigitalOcean](https://www.deploytodo.com/do-btn-blue.svg)](https://cloud.digitalocean.com/apps/new?repo=https://github.com/digitalocean/sample-dockerfile/tree/main)

Note that, for the purposes of this tutorial, this button deploys the app directly from DigitalOcean's GitHub repository, which disables automatic redeployment since you cannot change our template. If you want automatic redeployment or you want to change the sample app's code to your own, we instead recommend you fork [our repository](https://github.com/digitalocean/sample-dockerfile/tree/main).

To fork our repository, click the **Fork** button in the top-right of [its page on GitHub](https://github.com/digitalocean/sample-dockerfile/tree/main), then follow the on-screen instructions. To learn more about forking repos, see the [GitHub documentation](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo).

After forking the repo, you can view the same README in your own GitHub org; for example, in `https://github.com/<your-org>/sample-dockerfile`. To deploy the new repo, visit the [control panel](https://cloud.digitalocean.com/apps) and click the **Create App** button. This takes you to the app creation page. Under **Service Provider**, select **GitHub**. Then, under **Repository**, select your newly-forked repo. Ensure that your branch is set to **main** and **Autodeploy** is checked on. Finally, click **Next**.

After clicking the **Deploy to DigitalOcean** button or completing the instructions above to fork the repo, follow these steps:

1. Configure the app, such as by specifying HTTP routes, declaring environment variables, or adding a database. For the purposes of this tutorial, this step is optional.
1. Provide a name for your app and select the region to deploy your app to, then click **Next**. By default, App Platform selects the region closest to you. Unless your app needs to interface with external services, your chosen region does not affect the app's performance, since to all App Platform apps are routed through a global CDN.
1. On the following screen, leave all the fields as they are and click **Next**.
1. Confirm your plan settings and how many containers you want to launch and click **Launch Basic/Pro App**.

After, you should see a "Building..." progress indicator. You can click **View Logs** to see more details of the build. It can take a few minutes for the build to finish, but you can follow the progress in the **Deployments** tab.

Once the build completes successfully, click the **Live App** link in the header and you should see your running application in a new tab, displaying the home page.


## Make Changes to Your App

If you forked our repo, you can now make changes to your copy of the sample app. Pushing a new change to the forked repo automatically redeploys the app to App Platform with zero downtime.

Here's an example code change you can make for this app:

1. Edit `main.go` and replace the "Hello!" greeting on line 31 with a different greeting
1. Commit the change to the `main` branch. Normally it's a better practice to create a new branch for your change and then merge that branch to `main` after review, but for this demo you can commit to the `main` branch directly.
1. Visit the [control panel](https://cloud.digitalocean.com/apps) and navigate to your sample app.
1. You should see a "Building..." progress indicator, just like when you first created the app.
1. Once the build completes successfully, click the **Live App** link in the header and you should see your updated application running. You may need to force refresh the page in your browser (e.g. using **Shift** + **Reload**).

## Learn More

To learn more about App Platform and how to manage and update your application, see [our App Platform documentation](https://www.digitalocean.com/docs/app-platform/).

## Delete the App

When you no longer need this sample application running live, you can delete it by following these steps:
1. Visit the [Apps control panel](https://cloud.digitalocean.com/apps).
2. Navigate to the sample app.
3. In the **Settings** tab, click **Destroy**.

**Note**: If you do not delete your app, charges for using DigitalOcean services will continue to accrue.
