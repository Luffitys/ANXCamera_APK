.class public Lmiui/contentcatcher/InterceptorFactory;
.super Ljava/lang/Object;
.source "InterceptorFactory.java"


# static fields
.field private static final CONTENT_CATCHER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.contentcatcher"

.field private static final CONTENT_INJECTOR_CLASS_NAME:Ljava/lang/String; = "com.miui.contentcatcher.Interceptor"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "InterceptorFactory"

.field private static volatile mPackageInfo:Landroid/content/pm/PackageInfo;

.field private static final mPackageInfoLock:Ljava/lang/Object;

.field private static volatile sInterceptorClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    sput-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInterceptor(Landroid/app/Activity;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .registers 11

    const-string v0, "InterceptorFactory"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->initInterceptorClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_f

    return-object v5

    :cond_f
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/Activity;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    if-nez v7, :cond_1e

    return-object v5

    :cond_1e
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_27
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v9

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/contentcatcher/IInterceptor;

    move-object v1, v5

    sget-boolean v5, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v5, :cond_77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInterceptor took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_54} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_54} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_54} :catch_63
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_54} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_55

    goto :goto_77

    :catch_55
    move-exception v2

    const-string v3, "Exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78

    :catch_5c
    move-exception v2

    const-string v3, "NoSuchMethodException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :catch_63
    move-exception v2

    const-string v3, "InvocationTargetException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :catch_6a
    move-exception v2

    const-string v3, "IllegalAccessException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :catch_71
    move-exception v2

    const-string v3, "InstantiationException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    :goto_77
    nop

    :goto_78
    return-object v1
.end method

.method public static getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 9

    sget-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorFactory"

    const-string v1, "getInterceptorPackageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_6c

    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    sget-object v1, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_69

    if-nez v1, :cond_67

    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_22} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_55
    .catchall {:try_start_16 .. :try_end_22} :catchall_69

    if-nez v4, :cond_27

    const/4 v5, 0x0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_69

    return-object v5

    :cond_27
    :try_start_27
    const-string v5, "com.miui.contentcatcher"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    sput-object v5, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    sget-boolean v5, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v5, :cond_54

    const-string v5, "InterceptorFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageInfo took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_54} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_54} :catch_55
    .catchall {:try_start_27 .. :try_end_54} :catchall_69

    :cond_54
    goto :goto_67

    :catch_55
    move-exception v1

    :try_start_56
    const-string v2, "InterceptorFactory"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    :catch_5e
    move-exception v1

    const-string v2, "InterceptorFactory"

    const-string v3, "NameNotFoundException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_67
    :goto_67
    monitor-exit v0

    goto :goto_6c

    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_69

    throw v1

    :cond_6c
    :goto_6c
    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static initInterceptorClass()Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorFactory"

    const-string v1, "initInterceptorClass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v0, :cond_9a

    const-class v0, Lmiui/contentcatcher/InterceptorFactory;

    monitor-enter v0

    :try_start_12
    sget-object v1, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v1, :cond_95

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_95

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_97

    :try_start_24
    sget-boolean v5, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v5, :cond_40

    const-string v5, "InterceptorFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageInfo.packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.miui.contentcatcher.Interceptor"

    const/4 v7, 0x1

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_78

    const-string v6, "InterceptorFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initInterceptorClass took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_78} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_78} :catch_82
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_78} :catch_79
    .catchall {:try_start_24 .. :try_end_78} :catchall_97

    :cond_78
    goto :goto_95

    :catch_79
    move-exception v5

    :try_start_7a
    const-string v6, "InterceptorFactory"

    const-string v7, "Error "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    :catch_82
    move-exception v5

    const-string v6, "InterceptorFactory"

    const-string v7, "Exception "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_95

    :catch_8c
    move-exception v5

    const-string v6, "InterceptorFactory"

    const-string v7, "NameNotFoundException"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_95
    :goto_95
    monitor-exit v0

    goto :goto_9a

    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_7a .. :try_end_99} :catchall_97

    throw v1

    :cond_9a
    :goto_9a
    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    return-object v0
.end method
