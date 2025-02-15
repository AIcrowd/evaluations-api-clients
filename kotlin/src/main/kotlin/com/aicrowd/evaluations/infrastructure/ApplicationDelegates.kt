package com.aicrowd.evaluations.infrastructure

import kotlin.properties.ReadWriteProperty
import kotlin.reflect.KProperty

object ApplicationDelegates {
    /**
     * Provides a property delegate, allowing the property to be set once and only once.
     *
     * If unset (no default value), a get on the property will throw [IllegalStateException].
     */
    fun <T> setOnce(defaultValue: T? = null) : ReadWriteProperty<Any?, T> = SetOnce(defaultValue)

    private class SetOnce<T>(defaultValue: T? = null) : ReadWriteProperty<Any?, T> {
        private var isSet = false
        private var value: T? = defaultValue

        override fun getValue(thisRef: Any?, property: KProperty<*>): T {
            return value ?: throw IllegalStateException("${property.name} not initialized")
        }

        override fun setValue(thisRef: Any?, property: KProperty<*>, value: T) = synchronized(this) {
            if (!isSet) {
                this.value = value
                isSet = true
            }
        }
    }
}