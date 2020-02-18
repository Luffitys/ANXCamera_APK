.class public Lcom/android/camera/module/impl/component/MimojiStatusManager;
.super Ljava/lang/Object;
.source "MimojiStatusManager.java"


# static fields
.field public static MIMOJI_CREATE:I = 0x4

.field public static MIMOJI_EDIT_MID:I = 0x8

.field public static MIMOJI_EIDT:I = 0x10

.field public static MIMOJI_NONE:I = 0x0

.field public static MIMOJI_PREVIEW:I = 0x2


# instance fields
.field private mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

.field private volatile mIsLoading:Z

.field private mMode:I

.field private mPannelState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mPannelState:Z

    sget v1, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_NONE:I

    iput v1, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mIsLoading:Z

    return-void
.end method


# virtual methods
.method public IsInMimojiCreate()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_CREATE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public IsInMimojiEdit()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_EIDT:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public IsInMimojiEditMid()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_EDIT_MID:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public IsInMimojiPreview()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_PREVIEW:I

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public IsInPreviewSurface()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_CREATE:I

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public IsLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mIsLoading:Z

    return p0
.end method

.method public declared-synchronized getCurrentMimojiState()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    if-nez v0, :cond_0

    const-string v0, "close_state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "close_state"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMimojiPannelState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mPannelState:Z

    return p0
.end method

.method public declared-synchronized getMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getmCurrentMimojiInfo()Lcom/android/camera/fragment/mimoji/MimojiInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    return-object p0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_NONE:I

    iput v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMimojiPannelState(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentMimojiCloseState()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v0}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    const-string v0, "close_state"

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setIsLoading(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMimojiPannelState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mPannelState:Z

    return-void
.end method

.method public declared-synchronized setMode(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setmCurrentMimojiInfo(Lcom/android/camera/fragment/mimoji/MimojiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->mCurrentMimojiInfo:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    return-void
.end method
