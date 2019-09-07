.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.core"


# instance fields
.field private mApplicationDelegate:Lmiui/external/ApplicationDelegate;

.field private mInitialized:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-direct {p0}, Lmiui/external/Application;->loadSdk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->initializeSdk()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->mInitialized:Z

    return-void
.end method

.method private handleGenericError(Ljava/lang/Throwable;)V
    .locals 1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of p0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "miuisdk"

    const-string v0, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {p0}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    return-void
.end method

.method private handleUnknownError(Ljava/lang/String;I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " code: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miuisdk"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {p0}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    return-void
.end method

.method private initializeSdk()Z
    .locals 8

    const-string v0, "initialize"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Application;

    aput-object v6, v5, v1

    const-class v6, Ljava/util/Map;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v2, v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v2}, Lmiui/external/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    return v1
.end method

.method private loadSdk()Z
    .locals 5

    const-string v0, "com.miui.core"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lmiui/external/SdkHelper;->isMiuiSystem()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "miui"

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lmiui/external/SdkHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0}, Lmiui/external/SdkHelper;->getLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v4, Lmiui/external/Application;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lmiui/external/SdkLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    return v1
.end method

.method private startSdk()Z
    .locals 7

    const-string v0, "start"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    aput-object v6, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    return v1

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v2}, Lmiui/external/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_1
    return v4

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean p1, p0, Lmiui/external/Application;->mInitialized:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->startSdk()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object p1

    iput-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    iget-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lmiui/external/ApplicationDelegate;->attach(Lmiui/external/Application;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/external/Application;->mStarted:Z

    return-void
.end method

.method public final getApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 0

    iget-object p0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 1

    iget-boolean v0, p0, Lmiui/external/Application;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->superOnCreate()V

    :goto_0
    return-void
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnLowMemory()V

    :goto_0
    return-void
.end method

.method public final onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnTerminate()V

    :goto_0
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnTrimMemory(I)V

    :goto_0
    return-void
.end method

.method final superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final superOnCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final superOnLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method final superOnTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final superOnTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
