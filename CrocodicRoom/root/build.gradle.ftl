apply plugin: 'com.android.application'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-android-extensions'
apply plugin: 'kotlin-kapt'

android {
    compileSdkVersion 29
    defaultConfig {
        applicationId "${packageName}"
        minSdkVersion 23
        targetSdkVersion 29
        versionCode 1
        versionName "0.0.1"
        testInstrumentationRunner "androidx.test.runner.AndroidJUnitRunner"
        buildConfigField "String", "BASE_URL", "\"${baseUrl}\""
        setProperty("archivesBaseName", "Apps-v$versionName")
    }

    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'

            signingConfig getSigningConfig()
            applicationVariants.all { variant ->
                variant.outputs.all { output ->
                    def flavor = variant.name
                    def version = variant.versionName
                    outputFileName = new File("Apps-v.$version($flavor).apk")
                }
            }
        }

        debug {
            debuggable true
            minifyEnabled false

            signingConfig getSigningConfig()
            applicationVariants.all { variant ->
                variant.outputs.all { output ->
                    def flavor = variant.name
                    def version = variant.versionName
                    outputFileName = new File("Apps-v.$version($flavor).apk")
                }
            }
        }
    }

    dataBinding {
        enabled = true
    }
}

dependencies {
        implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
        implementation 'androidx.appcompat:appcompat:1.1.0'
        implementation 'androidx.core:core-ktx:1.1.0'
        implementation 'androidx.constraintlayout:constraintlayout:1.1.3'
        implementation 'com.google.android.material:material:1.0.0'

        // Room components
        implementation "androidx.room:room-runtime:$rootProject.roomVersion"
        implementation "androidx.room:room-ktx:$rootProject.roomVersion"
        implementation "androidx.room:room-rxjava2:$rootProject.roomVersion"
        implementation 'androidx.preference:preference:1.1.0'
        kapt "androidx.room:room-compiler:$rootProject.roomVersion"
        androidTestImplementation "androidx.room:room-testing:$rootProject.roomVersion"

        // Lifecycle components
        implementation "androidx.lifecycle:lifecycle-extensions:$rootProject.archLifecycleVersion"
        kapt "androidx.lifecycle:lifecycle-compiler:$rootProject.archLifecycleVersion"
        androidTestImplementation "androidx.arch.core:core-testing:$rootProject.androidxArchVersion"

        // ViewModel Kotlin support
        implementation "androidx.lifecycle:lifecycle-viewmodel-ktx:$rootProject.archLifecycleVersion"

        // Coroutines
        api "org.jetbrains.kotlinx:kotlinx-coroutines-core:$rootProject.coroutines"
        api "org.jetbrains.kotlinx:kotlinx-coroutines-android:$rootProject.coroutines"

        // Dagger
        implementation "com.google.dagger:dagger:$rootProject.dagger2Version"
        kapt "com.google.dagger:dagger-compiler:$rootProject.dagger2Version"
        implementation "com.google.dagger:dagger-android:$rootProject.dagger2Version"
        kapt "com.google.dagger:dagger-android-processor:$rootProject.dagger2Version"
        implementation "com.google.dagger:dagger-android-support:$rootProject.dagger2Version"

        // Retrofit
        implementation "com.squareup.retrofit2:retrofit:$rootProject.retrofitVersion"
        implementation "com.squareup.retrofit2:adapter-rxjava2:$rootProject.retrofitVersion"
        implementation "com.squareup.retrofit2:converter-gson:$rootProject.retrofitVersion"
        implementation "com.squareup.retrofit2:converter-scalars:$retrofitVersion"
        implementation 'com.squareup.okhttp3:logging-interceptor:3.12.0'

        // GSON
        implementation 'com.google.code.gson:gson:2.8.5'

        //Reactive
        implementation 'io.reactivex.rxjava2:rxjava:2.2.9'
        implementation 'io.reactivex.rxjava2:rxandroid:2.1.1'

        // Glide
        implementation "com.github.bumptech.glide:glide:$rootProject.glideVersion"
        kapt "com.github.bumptech.glide:compiler:$rootProject.glideVersion"
        implementation ("com.github.bumptech.glide:okhttp3-integration:$rootProject.glideVersion"){
            exclude group: 'glide-parent'
        }
}