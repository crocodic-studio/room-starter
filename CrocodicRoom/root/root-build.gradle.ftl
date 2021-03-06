// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    ext.kotlin_version = '1.3.60'
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.5.2'
        classpath 'com.google.gms:google-services:4.3.3'

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        maven { url "https://jitpack.io" }
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}

ext {
    roomVersion = '2.2.2'
    archLifecycleVersion = '2.2.0-rc02'
    androidxArchVersion = '2.0.0'
    coroutines = '1.2.0'
    dagger2Version = '2.24'
    retrofitVersion = '2.5.0'
    glideVersion = '4.10.0'
}