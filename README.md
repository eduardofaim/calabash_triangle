
<a href="https://github.com/eduardofaim">
    <img src="https://www.outbrain.com/techblog/wp-content/uploads/2017/05/road-sign-361513_960_720.jpg" alt="test logo" title="test" align="right" height="60" />
</a>

Triangle Calculation - POC
======================

### Environment Setup

1. Global Dependencies
    * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
    * Or Install Ruby with [Homebrew](http://brew.sh/)
    ```
    brew install ruby
    ```
    * Install bundler (sudo may be necessary)
    ```
    gem install bundler
    ```
2. Clone the project
    ```
    git clone https://github.com/eduardofaim/calabash_triangle.git
    ```
3. Project Dependencies
    * Execute the command below to install dependecies
    ```
    bundle
    ```
4. To run your test:
```
    calabash-android run TrianguloApp.apk
```

Calabash-android will install an instrumentation along with your app when executing the app. We call this instrumentation for "test server". The "test server" has special permission that allows it to interact very closely with your app during test.

Every time you test a new binary or use an upgraded version of calabash a new test server will be build. The test server is an intrumentation that will run along with your app on the device to execute the test.
    
    
5. Troubleshooting
---------------

### Problems starting the tests

If your app instantaneously crashes right after being started, bear in mind that it needs the permission `android.permission.INTERNET` in order for calabash tests to run ( [Issue #278](https://github.com/calabash/calabash-android/issues/278) ). Add the following xml to your AndroidManifest.xml if you don't have it already:

```xml
<uses-permission android:name="android.permission.INTERNET" />
```


### Resources

##### [Cucumber Documentation](https://cucumber.io/docs/reference)

##### [Capybara Documentation](http://www.rubydoc.info/github/jnicklas/capybara/master)

##### [Ruby Documentation](http://ruby-doc.org/)
