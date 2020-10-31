.class public Lcom/miui/internal/hybrid/provider/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# static fields
.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.hybrid.webview"

.field private static sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
    .registers 6

    sget-object v0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_72

    return-object v1

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_25

    const-string v3, "com.miui.sdk.hybrid.webview"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_24} :catch_26
    .catchall {:try_start_c .. :try_end_24} :catchall_72

    move-object v1, v3

    :cond_25
    goto :goto_2a

    :catch_26
    move-exception v2

    :try_start_27
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_72

    :goto_2a
    if-eqz v1, :cond_42

    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    sput-object v3, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_3e
    .catchall {:try_start_2d .. :try_end_3d} :catchall_72

    goto :goto_42

    :catch_3e
    move-exception v2

    :try_start_3f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    :goto_42
    sget-object v2, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    if-nez v2, :cond_4d

    new-instance v2, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;

    invoke-direct {v2}, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;-><init>()V

    sput-object v2, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    :cond_4d
    const-string v2, "hybrid"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "hybrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    sget-object v2, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    monitor-exit v0

    return-object v2

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3f .. :try_end_74} :catchall_72

    throw v1
.end method
