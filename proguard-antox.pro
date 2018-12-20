# workaround for
# https://issues.scala-lang.org/browse/SI-5397
-keep class scala.collection.SeqLike {
public protected *;
}

# This proguard config is originally from: https://github.com/comb/maven-android-scala-prototype
-dontobfuscate
-dontoptimize
-dontpreverify
-dontwarn **
-ignorewarnings
-dontnote javax.xml.**
-dontnote org.w3c.dom.**
-dontnote org.xml.sax.**
-dontnote scala.Enumeration
-keep class chat.tox.** { *; }
-keep class im.tox.** { *; }
-keep public class scala.Option
-keep public class scala.Function0
-keep public class scala.Function1
-keep public class scala.Function2
-keep public class scala.Product
-keep public class scala.Tuple2
-keep public class scala.collection.Seq
-keep public class scala.collection.immutable.List
-keep public class scala.collection.immutable.Map
-keep public class scala.collection.immutable.Seq
-keep public class scala.collection.immutable.Set
-keep public class scala.collection.immutable.Vector
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.appwidget.AppWidgetProvider
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.preference.Preference
-keep public class * extends android.view.View

#for okhttp
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

# -keep public class com.android.vending.licensing.ILicensingService
-keepclasseswithmembernames class * {
native <methods>;
}
-keepclasseswithmembers class * {
public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers class * extends android.app.Activity {
public void *(android.view.View);
}
-keepclassmembers enum * {
public static **[] values();
public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
public static final android.os.Parcelable$Creator *;
}
-keep public class chat.tox.** {
public protected *;
}
-keep public class im.tox.** {
public protected *;
}