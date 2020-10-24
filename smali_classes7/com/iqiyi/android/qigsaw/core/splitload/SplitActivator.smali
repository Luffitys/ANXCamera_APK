.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sSplitApplicationMap:Ljava/util/Map;


# instance fields
.field private final aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

.field private final appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->sSplitApplicationMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    return-void
.end method

.method private debuggable()Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method


# virtual methods
.method activate(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 4

    const/16 v0, -0x18

    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v1, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->sSplitApplicationMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v2, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activateSplitProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    :try_start_2
    const-class p1, Landroid/app/Application;

    const-string p2, "onCreate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p1, p2, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->debuggable()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    invoke-direct {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p2, -0x19

    invoke-direct {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->debuggable()Z

    move-result p0

    if-eqz p0, :cond_3

    instance-of p0, p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    invoke-direct {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method
