<?xml version="1.0"?>
<recipe>
    <merge from="root/root-build.gradle.ftl" to="${escapeXmlAttribute(topOut)}/build.gradle" />
    <merge from="root/build.gradle.ftl" to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <merge from="root/AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    
    <instantiate from="root/src/app_package/api/ApiResponse.kt.ftl" to="${escapeXmlAttribute(srcOut)}/api/ApiResponse.kt" />
    <instantiate from="root/src/app_package/api/ApiService.kt.ftl" to="${escapeXmlAttribute(srcOut)}/api/ApiService.kt" />
    <instantiate from="root/src/app_package/api/ApiStatus.kt.ftl" to="${escapeXmlAttribute(srcOut)}/api/ApiStatus.kt" />

    <instantiate from="root/src/app_package/Core.kt.ftl" to="${escapeXmlAttribute(srcOut)}/Core.kt" />

    <instantiate from="root/src/app_package/base/BaseActivity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/base/BaseActivity.kt" />
    <instantiate from="root/src/app_package/base/BaseViewModel.kt.ftl" to="${escapeXmlAttribute(srcOut)}/base/BaseViewModel.kt" />
    <instantiate from="root/src/app_package/base/NoViewModelActivity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/base/NoViewModelActivity.kt" />
    <instantiate from="root/src/app_package/base/ViewModelFactory.kt.ftl" to="${escapeXmlAttribute(srcOut)}/base/ViewModelFactory.kt" />

    <instantiate from="root/src/app_package/data/Session.kt.ftl" to="${escapeXmlAttribute(srcOut)}/data/Session.kt" />
    <instantiate from="root/src/app_package/data/room/AppDatabase.kt.ftl" to="${escapeXmlAttribute(srcOut)}/data/room/AppDatabase.kt" />
    <instantiate from="root/src/app_package/data/room/user/User.kt.ftl" to="${escapeXmlAttribute(srcOut)}/data/room/user/User.kt" />
    <instantiate from="root/src/app_package/data/room/user/UserDao.kt.ftl" to="${escapeXmlAttribute(srcOut)}/data/room/user/UserDao.kt" />
    <instantiate from="root/src/app_package/data/room/user/UserRepository.kt.ftl" to="${escapeXmlAttribute(srcOut)}/data/room/user/UserRepository.kt" />

    <instantiate from="root/src/app_package/injection/ActivityBuilder.kt.ftl" to="${escapeXmlAttribute(srcOut)}/injection/ActivityBuilder.kt" />
    <instantiate from="root/src/app_package/injection/AppComponent.kt.ftl" to="${escapeXmlAttribute(srcOut)}/injection/AppComponent.kt" />
    <instantiate from="root/src/app_package/injection/AppModule.kt.ftl" to="${escapeXmlAttribute(srcOut)}/injection/AppModule.kt" />
    <instantiate from="root/src/app_package/injection/NetworkModule.kt.ftl" to="${escapeXmlAttribute(srcOut)}/injection/NetworkModule.kt" />
    <instantiate from="root/src/app_package/injection/RoomModule.kt.ftl" to="${escapeXmlAttribute(srcOut)}/injection/RoomModule.kt" />

    <instantiate from="root/src/app_package/injection/anotation/ViewModelKey.kt.ftl" to="${escapeXmlAttribute(srcOut)}/injection/anotation/ViewModelKey.kt" />

    <instantiate from="root/src/app_package/ui/main/MainActivity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/ui/main/MainActivity.kt" />
    <instantiate from="root/src/app_package/ui/main/MainViewModel.kt.ftl" to="${escapeXmlAttribute(srcOut)}/ui/main/MainViewModel.kt" />
    <instantiate from="root/src/app_package/ui/main/MainModule.kt.ftl" to="${escapeXmlAttribute(srcOut)}/ui/main/MainModule.kt" />

    <instantiate from="root/src/app_package/util/Cons.kt.ftl" to="${escapeXmlAttribute(srcOut)}/util/Cons.kt" />
    <instantiate from="root/src/app_package/util/ClickPrevention.kt.ftl" to="${escapeXmlAttribute(srcOut)}/util/ClickPrevention.kt" />

    <mkdir at="${escapeXmlAttribute(srcOut)}/widget" />

    <copy from="root/res/layout/activity_main.xml" to="${escapeXmlAttribute(resOut)}/layout/activity_main.xml" />
</recipe>
