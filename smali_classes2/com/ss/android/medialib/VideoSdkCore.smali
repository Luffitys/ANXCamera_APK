.class public final Lcom/ss/android/medialib/VideoSdkCore;
.super Ljava/lang/Object;
.source "VideoSdkCore.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/VideoSdkCore$ProductType;
    }
.end annotation


# static fields
.field public static APPLICATION_CONTEXT:Landroid/content/Context; = null
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PRODUCT_AWEME:I = 0x0

.field public static final PRODUCT_HOTSOON:I = 0x1

.field public static final PRODUCT_OTHER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoSdkCore"

.field private static inited:Z

.field private static sFinder:Lcom/bef/effectsdk/ResourceFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/medialib/VideoSdkCore;->APPLICATION_CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static enableGLES3(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeEnableGLES3(Z)V

    return-void
.end method

.method public static getNativeFinder(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    sget-object v2, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-nez v2, :cond_1

    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "\u9519\u8bef\u8c03\u7528finder\u76f8\u5173\u63a5\u53e3"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSdkVersionCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ss/android/medialib/VideoSdkCore;->nativeGetVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ss/android/medialib/VideoSdkCore;->nativeGetVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/ss/android/medialib/VideoSdkCore;->inited:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/medialib/VideoSdkCore;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/medialib/VideoSdkCore;->inited:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ss/android/medialib/VideoSdkCore;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetAssertManagerFromJava(Landroid/content/res/AssetManager;)V

    new-instance v1, Lcom/ss/android/medialib/VideoSdkCore$1;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/VideoSdkCore$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/ss/android/medialib/VideoSdkCore;->inited:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static native nativeEnableGLES3(Z)V
.end method

.method private static native nativeGetVersionCode()Ljava/lang/String;
.end method

.method private static native nativeGetVersionName()Ljava/lang/String;
.end method

.method private static native nativeSetAmazingShareDir(Ljava/lang/String;)V
.end method

.method private static native nativeSetAssertManagerEnable(Z)V
.end method

.method private static native nativeSetAssertManagerFromJava(Landroid/content/res/AssetManager;)V
.end method

.method private static native nativeSetProduct(I)V
.end method

.method private static native nativeSetResourceFinderEnable(Z)V
.end method

.method public static releaseNativeFinder(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-nez v0, :cond_1

    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "\u9519\u8bef\u8c03\u7528finder\u76f8\u5173\u63a5\u53e3"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->release(J)V

    return-void
.end method

.method public static setAmazingShareDir(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetAmazingShareDir(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnableAssetManager(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetAssertManagerEnable(Z)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/ss/android/medialib/common/LogUtil;->setUp(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/ss/android/medialib/common/LogInvoker;->setLogLevel(I)V

    return-void
.end method

.method public static setProduct(I)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetProduct(I)V

    return-void
.end method

.method public static setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V
    .locals 0
    .param p0    # Lcom/bef/effectsdk/ResourceFinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetResourceFinderEnable(Z)V

    return-void
.end method
