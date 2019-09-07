.class public Lcom/ss/android/vesdk/runtime/VEEffectConfig;
.super Ljava/lang/Object;
.source "VEEffectConfig.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sEffectAssetManager:Landroid/content/res/AssetManager;

.field private static sFinder:Lcom/bef/effectsdk/ResourceFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    const-class v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sEffectAssetManager:Landroid/content/res/AssetManager;

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sEffectAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0, v1, p0, p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeConfigEffect(ZLandroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableAssetManager(Landroid/content/res/AssetManager;)Z
    .locals 0
    .param p0    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sEffectAssetManager:Landroid/content/res/AssetManager;

    const/4 p0, 0x1

    return p0
.end method

.method public static enableEffectAmazingForEditor(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeEnableEffectAmazingForEditor(Z)V

    return-void
.end method

.method public static getNativeFinder(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    sget-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/4 p1, -0x1

    const-string v0, "\u9519\u8bef\u8c03\u7528finder\u76f8\u5173\u63a5\u53e3"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static native nativeConfigEffect(ZLandroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEnableEffectAmazingForEditor(Z)V
.end method

.method private static native nativeSetEffectCallback(Lcom/ss/android/vesdk/TEEffectCallback;)V
.end method

.method private static native nativeSetShareDir(Ljava/lang/String;)V
.end method

.method public static releaseNativeFinder(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->release(J)V

    return-void

    :cond_1
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/4 p1, -0x1

    const-string v0, "\u9519\u8bef\u8c03\u7528finder\u76f8\u5173\u63a5\u53e3"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static setEffectCallback(Lcom/ss/android/vesdk/TEEffectCallback;)Z
    .locals 0
    .param p0    # Lcom/ss/android/vesdk/TEEffectCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectCallback(Lcom/ss/android/vesdk/TEEffectCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V
    .locals 0

    sput-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    return-void
.end method

.method public static setShareDir(Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetShareDir(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
