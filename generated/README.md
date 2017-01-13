![Image](https://github.com/cesarferreira/android-latest/raw/master/extras/web-screenshot.png)

Latest android versions for developers. Can be found online here [cesarferreira.com/android-latest](http://cesarferreira.com/android-latest/)


------------
The following table was automatically generated based on [data.json](data.json):

<center>

| Key | Value     | Usage      |
|:-----------:|:--------:|:--------:|
| androidGradlePluginVersion | 2.2.3 | classpath 'com.android.tools.build:gradle:<strong>2.2.3</strong>' |
| gradleVersion | 3.3 | https://services.gradle.org/distributions/gradle-3.3-all.zip |
| compileSdkVersion | 25 | compileSdkVersion <strong>25</strong> |
| buildToolsVersion | 24.0.3 | buildToolsVersion '<strong>24.0.3</strong>' |
| targetSdkVersion | 25 | targetSdkVersion <strong>25</strong> |
| latestSupportVersion | 25.1.0 | compile 'com.android.support:support-v7:<strong>25.1.0</strong>' |
| googlePlayServicesVersion | 10.0.1 | compile 'com.google.android.gms:play-services:<strong>10.0.1</strong>' |
| latestAndroidVersionNumber | 7.1.1 | N/R |
| latestAndroidVersionCode | 25 | N/R |
| latestAndroidVersionName | Nougat | N/R |
| latestAndroidReleaseDate | 22 August 2016 | N/R |

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
