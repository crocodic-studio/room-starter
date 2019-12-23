package ${escapeKotlinIdentifiers(packageName)}.injection

import dagger.Module
import dagger.android.ContributesAndroidInjector
import ${escapeKotlinIdentifiers(packageName)}.ui.main.MainActivity
import ${escapeKotlinIdentifiers(packageName)}.ui.main.MainModule

@Module
abstract class ActivityBuilder {

    @ContributesAndroidInjector(modules = [MainModule::class])
    abstract fun bindMainActivity(): MainActivity

}