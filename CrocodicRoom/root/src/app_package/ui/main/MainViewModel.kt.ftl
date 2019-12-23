package ${escapeKotlinIdentifiers(packageName)}.ui.main

import android.util.Log
import androidx.lifecycle.MutableLiveData
import ${escapeKotlinIdentifiers(packageName)}.api.ApiResponse
import ${escapeKotlinIdentifiers(packageName)}.api.ApiService
import ${escapeKotlinIdentifiers(packageName)}.api.ApiStatus
import ${escapeKotlinIdentifiers(packageName)}.data.Session
import ${escapeKotlinIdentifiers(packageName)}.data.room.AppDatabase
import ${escapeKotlinIdentifiers(packageName)}.base.BaseViewModel
import ${escapeKotlinIdentifiers(packageName)}.util.Cons
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.schedulers.Schedulers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import org.json.JSONObject
import javax.inject.Inject

class MainViewModel @Inject constructor(
                        private val apiService: ApiService,
                        private val database: AppDatabase,
                        private val session: Session
                    ) : BaseViewModel()  {


    val apiResponse = MutableLiveData<ApiResponse>()


       fun login() {

           compositeDisposable.add(
               apiService.login("username", "password", "regid")
                   .observeOn(AndroidSchedulers.mainThread())
                   .subscribeOn(Schedulers.io())
                   .subscribe({
                       val response = it.string()

                        val responseJson = JSONObject(response)

                       val apiStatus = responseJson.getInt("api_status")
                       val apiMessage = responseJson.getString("api_message")

                       if (apiStatus == 1) {

                           apiResponse.postValue(
                               ApiResponse().apply {
                                   status = ApiStatus.SUCCESS
                                   body = apiMessage
                               }
                           )

                       } else {
                           apiResponse.postValue(
                               ApiResponse().apply {
                                   status = ApiStatus.WRONG
                                   body = apiMessage
                               }
                           )
                           Log.e(Cons.TAG, "error status: $apiMessage")
                       }
                   }, {
                       apiResponse.postValue(
                           ApiResponse().apply {
                               status = ApiStatus.ERROR
                               body = it.localizedMessage
                           }
                       )

                   })
           )
       }

}