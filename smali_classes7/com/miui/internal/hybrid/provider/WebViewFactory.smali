.class public Lcom/miui/internal/hybrid/provider/WebViewFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.hybrid.webview"

.field private static sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
    .locals 5

    sget-object v0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "com.miui.sdk.hybrid.webview"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    sput-object p0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    sget-object p0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    if-nez p0, :cond_3

    new-instance p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;

    invoke-direct {p0}, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;-><init>()V

    sput-object p0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    :cond_3
    const-string p0, "hybrid"

    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "hybrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Lcom/miui/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
