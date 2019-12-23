package ${escapeKotlinIdentifiers(packageName)}.ui.main

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import androidx.databinding.DataBindingUtil.setContentView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import ${escapeKotlinIdentifiers(packageName)}.R
import ${escapeKotlinIdentifiers(packageName)}.api.ApiResponse
import ${escapeKotlinIdentifiers(packageName)}.api.ApiStatus
import ${escapeKotlinIdentifiers(packageName)}.base.BaseActivity
import ${escapeKotlinIdentifiers(packageName)}.util.ClickPrevention
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : BaseActivity<MainViewModel>(), ClickPrevention {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        viewModel.apiResponse.observe(this, Observer {})
    }


    private fun responseState(apiResponse: ApiResponse) {
        when(apiResponse.status) {
            ApiStatus.SUCCESS -> { }
            ApiStatus.WRONG -> {
                apiResponse.body?.let {  }
            }
            ApiStatus.ERROR -> {
                apiResponse.body?.let { }
            }
        }
    }

}