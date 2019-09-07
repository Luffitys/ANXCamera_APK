.class public Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;
.super Ljava/lang/Object;
.source "TENativeLibsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;,
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TENativeLibsLoader"

.field private static isLibraryLoadedOpt:Z

.field private static mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

.field private static sContext:Landroid/content/Context;

.field private static sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

.field private static sLibraryLoaded:Z

.field private static sLoadOptLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryLoader;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryLoader;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->isLibraryLoadedOpt:Z

    sput-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLoadOptLibrary:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static enableLoadOptLibrary(Z)V
    .locals 0

    sput-boolean p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLoadOptLibrary:Z

    return-void
.end method

.method public static getLibraryLoadedVersion()I
    .locals 1

    sget-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->isLibraryLoadedOpt:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized loadLibrary()V
    .locals 4

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "ttffmpeg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ttyuv"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "tt_effect"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ttvebase"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ttvideorecorder"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLoadOptLibrary:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "ttvideoeditor-import"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sput-boolean v3, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->isLibraryLoadedOpt:Z

    goto :goto_0

    :cond_1
    const-string v2, "ttvideoeditor"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->isLibraryLoadedOpt:Z

    :goto_0
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    invoke-interface {v2, v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)V

    sput-boolean v3, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    invoke-interface {v2, v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)V

    sput-boolean v3, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLibraryLoad(Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;)V
    .locals 0

    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    return-void
.end method
