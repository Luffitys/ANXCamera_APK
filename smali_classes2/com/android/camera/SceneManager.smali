.class public Lcom/android/camera/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SceneManager$SceneType;
    }
.end annotation


# static fields
.field public static final SCENE_BURST:I = 0x4

.field public static final SCENE_HDR:I = 0x2

.field public static final SCENE_HHT:I = 0x3

.field public static final SCENE_NORMAL:I = 0x1


# instance fields
.field private mSceneStacks:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    return-void
.end method


# virtual methods
.method public getCurrentScene()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_0
    return v1
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/SceneManager;->getCurrentScene()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "_HHT"

    return-object p0

    :cond_1
    const-string p0, "_HDR"

    return-object p0
.end method

.method public popStacks()I
    .locals 5

    iget-object v0, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x2

    aget v2, v0, v1

    new-array v3, v1, [I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    :cond_0
    return v2
.end method

.method public pushStacks(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    aget v5, v4, v3

    if-ne v5, p1, :cond_0

    new-array v5, v0, [I

    invoke-static {v4, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    add-int/lit8 v4, v3, 0x1

    sub-int v6, v0, v3

    sub-int/2addr v6, v2

    invoke-static {v1, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v2

    aput p1, v5, v0

    iput-object v5, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v2, v0

    iput-object v2, p0, Lcom/android/camera/SceneManager;->mSceneStacks:[I

    return-void
.end method
