![Image](https://github.com/cesarferreira/android-latest/raw/master/extras/web-screenshot.png)

Latest android versions for developers. Can be found online here [cesarferreira.com/android-latest](http://cesarferreira.com/android-latest/)


------------
The following table was automatically generated based on [data.json](data.json):

<center>

| Key | Value     | Usage      |
|:-----------:|:--------:|:--------:|
| androidGradlePluginVersion | 3.0.1 | classpath 'com.android.tools.build:gradle:<strong>3.0.1</strong>' |
| gradleVersion | 4.5.1 | https://services.gradle.org/distributions/gradle-4.5.1-all.zip |
| compileSdkVersion | 27 | compileSdkVersion <strong>27</strong> |
| buildToolsVersion | 27.0.3 | buildToolsVersion '<strong>27.0.3</strong>' |
| targetSdkVersion | 27 | targetSdkVersion <strong>27</strong> |
| latestSupportVersion | 27.0.2 | compile 'com.android.support:support-v7:<strong>27.0.2</strong>' |
| googlePlayServicesVersion | 11.8.0 | compile 'com.google.android.gms:play-services:<strong>11.8.0</strong>' |
| latestAndroidVersionNumber | 8.1 | N/R |
| latestAndroidVersionCode | 27 | N/R |
| latestAndroidVersionName | Oreo | N/R |
| latestAndroidReleaseDate | 05 December 2017 | N/R |

</center>

## Motivation

I'm always wondering what the latest versions of buildTools/support/etc. are, so here is a repository with the updated information for consultation.
Anyone can open a pull request if any version comes out and I fail to notice.

## Available outputs

- [data.json](data.json)
- [build.gradle](generated/build.gradle)
- [index.html](http://cesarferreira.com/android-latest/)
- [README.md](generated/README.md)


## Using the `build.gradle`

Apply this in your main `build.gradle`
```groovy
apply from: 'https://raw.githubusercontent.com/cesarferreira/android-latest/master/generated/build.gradle'
```

Use the variables at will
```groovy
buildToolsVersion rootProject.ext.buildToolsVersion
```

## Contributing

1. Fork the project
2. Update the `data.json`
3. Run the `ruby generator.rb`
4. Create the pull request

## License

This project is available under the MIT license. See the LICENSE file for more info.
