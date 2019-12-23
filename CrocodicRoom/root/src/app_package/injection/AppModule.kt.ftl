package ${escapeKotlinIdentifiers(packageName)}.injection

import android.app.Application
import android.content.Context
import androidx.lifecycle.ViewModelProvider
import dagger.Binds
import dagger.Module
import dagger.Provides
import javax.inject.Singleton
import ${escapeKotlinIdentifiers(packageName)}.data.Session
import ${escapeKotlinIdentifiers(packageName)}.base.ViewModelFactory

@Module
abstract class AppModule {

    @Binds
    abstract fun provideContext(application: Application): Context

    @Binds
    abstract fun bindViewModelFactory(viewModelFactory: ViewModelFactory): ViewModelProvider.Factory

    @Module
    companion object {
        @JvmStatic
        @Provides
        @Singleton
        fun provideSession(context: Context) = Session(context)

    }
}
