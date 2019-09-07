.class public Lcom/android/camera/beautyshot/BeautyShot;
.super Ljava/lang/Object;
.source "BeautyShot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeautyShot"


# instance fields
.field private mAssetsManager:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "camera_beauty_mpbase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "camera_arcsoft_beautyshot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jni_arcsoft_beautyshot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t loadLibrary, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyShot"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/beautyshot/BeautyShot;->mAssetsManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method public static native flipYuvHorizontal([BII)V
.end method

.method public static native flipYuvVertical([BII)V
.end method

.method private native nativeInit()V
.end method

.method private native nativeUninit()V
.end method

.method private native processByBeautyLevel(Landroid/content/res/AssetManager;[BIIIII)I
.end method

.method private native processBySmoothLevel(Landroid/content/res/AssetManager;[BIIIII)I
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/beautyshot/BeautyShot;->mAssetsManager:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Lcom/android/camera/beautyshot/BeautyShot;->nativeInit()V

    return-void
.end method

.method public processByBeautyLevel([BIIIII)I
    .locals 8

    iget-object v1, p0, Lcom/android/camera/beautyshot/BeautyShot;->mAssetsManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    const-string p0, "BeautyShot"

    const-string p1, "BeautyShot is not initialized"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/beautyshot/BeautyShot;->processByBeautyLevel(Landroid/content/res/AssetManager;[BIIIII)I

    move-result p0

    return p0
.end method

.method public processBySmoothLevel([BIIIII)I
    .locals 8

    iget-object v1, p0, Lcom/android/camera/beautyshot/BeautyShot;->mAssetsManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    const-string p0, "BeautyShot"

    const-string p1, "BeautyShot is not initialized"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/beautyshot/BeautyShot;->processBySmoothLevel(Landroid/content/res/AssetManager;[BIIIII)I

    move-result p0

    return p0
.end method

.method public uninit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/beautyshot/BeautyShot;->mAssetsManager:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Lcom/android/camera/beautyshot/BeautyShot;->nativeUninit()V

    return-void
.end method
