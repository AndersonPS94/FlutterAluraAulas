plugins {
    id("com.android.application")
    id("kotlin-android")
    // O plugin do Flutter deve vir depois do Android e Kotlin
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.new_project"

    // Usa o compileSdk definido pelo Flutter
    compileSdk = flutter.compileSdkVersion

    // 🔒 NDK FIXADO (evita erro CXX1101)
    ndkVersion = "26.1.10909125"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    defaultConfig {
        applicationId = "com.example.new_project"

        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion

        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Assinatura debug por enquanto (ok para flutter run)
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
