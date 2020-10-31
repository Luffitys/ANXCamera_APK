.class public final Landroid/provider/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DeviceConfig$Properties;,
        Landroid/provider/DeviceConfig$BadConfigException;,
        Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAMESPACE_ACTIVITY_MANAGER:Ljava/lang/String; = "activity_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_ACTIVITY_MANAGER_NATIVE_BOOT:Ljava/lang/String; = "activity_manager_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_ANDROID:Ljava/lang/String; = "android"

.field public static final NAMESPACE_APP_COMPAT:Ljava/lang/String; = "app_compat"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_ATTENTION_MANAGER_SERVICE:Ljava/lang/String; = "attention_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_AUTOFILL:Ljava/lang/String; = "autofill"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_BIOMETRICS:Ljava/lang/String; = "biometrics"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_BLOBSTORE:Ljava/lang/String; = "blobstore"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"

.field public static final NAMESPACE_CONNECTIVITY:Ljava/lang/String; = "connectivity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_CONNECTIVITY_THERMAL_POWER_MANAGER:Ljava/lang/String; = "connectivity_thermal_power_manager"

.field public static final NAMESPACE_CONTACTS_PROVIDER:Ljava/lang/String; = "contacts_provider"

.field public static final NAMESPACE_CONTENT_CAPTURE:Ljava/lang/String; = "content_capture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_DEX_BOOT:Ljava/lang/String; = "dex_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAMESPACE_DISPLAY_MANAGER:Ljava/lang/String; = "display_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_GAME_DRIVER:Ljava/lang/String; = "game_driver"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_INPUT_NATIVE_BOOT:Ljava/lang/String; = "input_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_INTELLIGENCE_ATTENTION:Ljava/lang/String; = "intelligence_attention"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_INTELLIGENCE_CONTENT_SUGGESTIONS:Ljava/lang/String; = "intelligence_content_suggestions"

.field public static final NAMESPACE_MEDIA_NATIVE:Ljava/lang/String; = "media_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_NETD_NATIVE:Ljava/lang/String; = "netd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_PACKAGE_MANAGER_SERVICE:Ljava/lang/String; = "package_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_PERMISSIONS:Ljava/lang/String; = "permissions"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_PRIVACY:Ljava/lang/String; = "privacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_ROLLBACK:Ljava/lang/String; = "rollback"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_ROLLBACK_BOOT:Ljava/lang/String; = "rollback_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_RUNTIME:Ljava/lang/String; = "runtime"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_RUNTIME_NATIVE:Ljava/lang/String; = "runtime_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_RUNTIME_NATIVE_BOOT:Ljava/lang/String; = "runtime_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_SCHEDULER:Ljava/lang/String; = "scheduler"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_SETTINGS_STATS:Ljava/lang/String; = "settings_stats"

.field public static final NAMESPACE_SETTINGS_UI:Ljava/lang/String; = "settings_ui"

.field public static final NAMESPACE_STORAGE:Ljava/lang/String; = "storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAMESPACE_STORAGE_NATIVE_BOOT:Ljava/lang/String; = "storage_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_SYSTEMUI:Ljava/lang/String; = "systemui"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_TELEPHONY:Ljava/lang/String; = "telephony"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_TEXTCLASSIFIER:Ljava/lang/String; = "textclassifier"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_WIDGET:Ljava/lang/String; = "widget"

.field public static final NAMESPACE_WINDOW_MANAGER:Ljava/lang/String; = "window_manager"

.field public static final NAMESPACE_WINDOW_MANAGER_NATIVE_BOOT:Ljava/lang/String; = "window_manager_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final PUBLIC_NAMESPACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceConfig"

.field private static sListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/DeviceConfig$OnPropertiesChangedListener;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/database/ContentObserver;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://settings/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "textclassifier"

    const-string/jumbo v1, "runtime"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)V
    .registers 1

    invoke-static {p0}, Landroid/provider/DeviceConfig;->handleChange(Landroid/net/Uri;)V

    return-void
.end method

.method public static addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_26

    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V

    goto :goto_55

    :cond_26
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_39
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/DeviceConfig;->decrementNamespace(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V

    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_57

    throw v1
.end method

.method private static createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static decrementNamespace(Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_35

    sget-object v1, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/database/ContentObserver;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_35
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v1, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_49
    return-void
.end method

.method public static enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: reading from settings requires:android.permission.READ_DEVICE_CONFIG"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c

    :cond_b
    move v1, p2

    :goto_c
    return v1
.end method

.method public static getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    :catch_c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing float failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    :catch_c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing integer failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-wide p2

    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return-wide v1

    :catch_c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing long failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method public static varargs getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/provider/DeviceConfig$Properties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p0, v2}, Landroid/provider/Settings$Config;->getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicNamespaces()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    move-object v1, p2

    :goto_9
    return-object v1
.end method

.method private static handleChange(Landroid/net/Uri;)V
    .registers 10

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/provider/DeviceConfig$Properties$Builder;

    invoke-direct {v2, v1}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_14
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    const/4 v4, 0x2

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties$Builder;
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_2f} :catch_78

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_33
    nop

    invoke-virtual {v2}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    sget-object v4, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x0

    :goto_3c
    :try_start_3c
    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_73

    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    sget-object v7, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/provider/-$$Lambda$DeviceConfig$6U9gBH6h5Oab2DB_e83az4n_WEo;

    invoke-direct {v8, v6, v3}, Landroid/provider/-$$Lambda$DeviceConfig$6U9gBH6h5Oab2DB_e83az4n_WEo;-><init>(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_73
    monitor-exit v4

    return-void

    :catchall_75
    move-exception v5

    monitor-exit v4
    :try_end_77
    .catchall {:try_start_3c .. :try_end_77} :catchall_75

    throw v5

    :catch_78
    move-exception v3

    const-string v4, "DeviceConfig"

    const-string v5, "OnPropertyChangedListener update failed: permission violation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static incrementNamespace(Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    sget-object v2, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/database/ContentObserver;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_2a
    new-instance v2, Landroid/provider/DeviceConfig$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/provider/DeviceConfig$1;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Landroid/provider/DeviceConfig;->createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v3, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4d
    return-void
.end method

.method static synthetic lambda$handleChange$0(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/DeviceConfig;->decrementNamespace(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static resetToDefaults(ILjava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->resetToDefaults(Landroid/content/ContentResolver;ILjava/lang/String;)V

    return-void
.end method

.method public static setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v1

    # getter for: Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;
    invoke-static {p0}, Landroid/provider/DeviceConfig$Properties;->access$000(Landroid/provider/DeviceConfig$Properties;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Config;->setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/provider/Settings$Config;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
