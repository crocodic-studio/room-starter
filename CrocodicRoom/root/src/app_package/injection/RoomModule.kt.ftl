package ${escapeKotlinIdentifiers(packageName)}.injection

import android.content.Context
import dagger.Module
import dagger.Provides
import javax.inject.Singleton
import ${escapeKotlinIdentifiers(packageName)}.data.room.AppDatabase
import ${escapeKotlinIdentifiers(packageName)}.data.room.user.UserRepository

@Module
abstract class RoomModule {

    @Module
    companion object {

        @JvmStatic
        @Singleton
        @Provides
        fun provideDatabase(context: Context) = AppDatabase.getDatabase(context)

        @JvmStatic
        @Singleton
        @Provides
        fun provideUserRepository(database: AppDatabase) = UserRepository(database.userDao())

    }
}
