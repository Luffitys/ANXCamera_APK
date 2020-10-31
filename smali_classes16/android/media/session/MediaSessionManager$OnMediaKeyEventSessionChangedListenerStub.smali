.class final Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;
.super Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnMediaKeyEventSessionChangedListenerStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-direct {p0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;-><init>(Landroid/media/session/MediaSessionManager;)V

    return-void
.end method

.method static synthetic lambda$onMediaKeyEventSessionChanged$0(Ljava/util/Map$Entry;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method


# virtual methods
.method public onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 8

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    # getter for: Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->access$1100(Landroid/media/session/MediaSessionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    # setter for: Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSessionPackage:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/media/session/MediaSessionManager;->access$1302(Landroid/media/session/MediaSessionManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    # setter for: Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;
    invoke-static {v1, p2}, Landroid/media/session/MediaSessionManager;->access$1402(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    # getter for: Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;
    invoke-static {v1}, Landroid/media/session/MediaSessionManager;->access$1500(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub$4CTMsGoAeJ-D2gq0rNq8sthdL_0;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub$4CTMsGoAeJ-D2gq0rNq8sthdL_0;-><init>(Ljava/util/Map$Entry;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method
