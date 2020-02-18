.class public Lcom/ss/android/medialib/MessageCenterWrapper;
.super Ljava/lang/Object;
.source "MessageCenterWrapper.java"

# interfaces
.implements Lcom/bef/effectsdk/message/MessageCenter$Listener;


# static fields
.field private static INSTANCE:Lcom/ss/android/medialib/MessageCenterWrapper;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bef/effectsdk/message/MessageCenter$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->listeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/ss/android/medialib/MessageCenterWrapper;
    .locals 2

    sget-object v0, Lcom/ss/android/medialib/MessageCenterWrapper;->INSTANCE:Lcom/ss/android/medialib/MessageCenterWrapper;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/medialib/MessageCenterWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/medialib/MessageCenterWrapper;->INSTANCE:Lcom/ss/android/medialib/MessageCenterWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/medialib/MessageCenterWrapper;

    invoke-direct {v1}, Lcom/ss/android/medialib/MessageCenterWrapper;-><init>()V

    sput-object v1, Lcom/ss/android/medialib/MessageCenterWrapper;->INSTANCE:Lcom/ss/android/medialib/MessageCenterWrapper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/medialib/MessageCenterWrapper;->INSTANCE:Lcom/ss/android/medialib/MessageCenterWrapper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I

    iget v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bef/effectsdk/message/MessageCenter;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bef/effectsdk/message/MessageCenter;->init()V

    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->setListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    :cond_0
    iget v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bef/effectsdk/message/MessageCenter$Listener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bef/effectsdk/message/MessageCenter$Listener;->onMessageReceived(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/medialib/MessageCenterWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
