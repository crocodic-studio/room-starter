package ${escapeKotlinIdentifiers(packageName)}.ui.main


import androidx.lifecycle.ViewModel
import ${escapeKotlinIdentifiers(packageName)}.injection.anotation.ViewModelKey
import dagger.Binds
import dagger.Module
import dagger.multibindings.IntoMap

@Module
abstract class MainModule {
    @Binds
    @IntoMap
    @ViewModelKey(MainViewModel::class)
    abstract fun bindViewModel(mainViewModel: MainViewModel): ViewModel
}