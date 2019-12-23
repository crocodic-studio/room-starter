package ${escapeKotlinIdentifiers(packageName)}.base

import androidx.lifecycle.ViewModelProvider
import javax.inject.Inject
import android.os.Bundle
import java.lang.reflect.ParameterizedType

abstract class BaseActivity<VM : BaseViewModel> : NoViewModelActivity() {

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory

    protected lateinit var viewModel: VM

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val viewModelClass = (javaClass
            .genericSuperclass as ParameterizedType)
            .actualTypeArguments[0] as Class<VM> // 0 is BaseViewModel

        viewModel = ViewModelProvider(this, viewModelFactory).get(viewModelClass)
    }
}