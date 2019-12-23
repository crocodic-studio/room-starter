package ${escapeKotlinIdentifiers(packageName)}.data

import android.content.Context
import android.content.SharedPreferences

const val PREF_USERID = "userId"

class Session (context: Context) {

    var pref: SharedPreferences = context.getSharedPreferences(PREF_USERID, Context.MODE_PRIVATE)

    val userId: Int get() = pref.getInt(PREF_USERID, 0)

    fun saveUserId(value: Int) {
        val editor = pref.edit()
        editor?.putInt(PREF_USERID, value)
        editor?.apply()
    }

}