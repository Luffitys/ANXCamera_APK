.class public Lmiui/maml/elements/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicController$OnClientUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MAML_MusicController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaCallback:Landroid/media/session/MediaController$Callback;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/elements/MusicController$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicController$1;-><init>(Lmiui/maml/elements/MusicController;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v0, Lmiui/maml/elements/MusicController$2;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicController$2;-><init>(Lmiui/maml/elements/MusicController;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicController;->init()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicController;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicController$OnClientUpdateListener;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    return-object v0
.end method

.method private clearMediaController()V
    .registers 4

    const-string v0, "MAML_MusicController"

    const-string v1, "clearMediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lmiui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    :cond_12
    :try_start_12
    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lmiui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v1

    const-string v2, "unregister MediaController.Callback failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    :cond_23
    return-void
.end method

.method private initMediaController()V
    .registers 5

    const-string v0, "MAML_MusicController"

    const-string v1, "initMediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_19

    :try_start_b
    iget-object v2, p0, Lmiui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    iget-object v3, p0, Lmiui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v1

    const-string v2, "register MediaController.Callback failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_19
    return-void
.end method

.method private resetMediaController(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MAML_MusicController"

    const-string v1, "resetMediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->clearMediaController()V

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    :cond_1b
    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->initMediaController()V

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->updateInfoToListener()V

    :cond_21
    return-void
.end method

.method private updateInfoToListener()V
    .registers 4

    const-string v0, "MAML_MusicController"

    const-string v1, "updateInfoToListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lmiui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    invoke-interface {v1, v2}, Lmiui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    :cond_23
    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    iget-object v2, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    const-string v0, "MAML_MusicController"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->clearMediaController()V

    return-void
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    return-wide v1

    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .registers 5

    const-string v0, "MAML_MusicController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lmiui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Lmiui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    return-void
.end method

.method public isMusicActive()Z
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_15

    const/4 v3, 0x6

    if-ne v2, v3, :cond_16

    :cond_15
    const/4 v1, 0x1

    :cond_16
    return v1

    :cond_17
    return v1
.end method

.method public rating(Landroid/media/Rating;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_25

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RATING_KEY_BY_USER: failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAML_MusicController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public registerListener(Lmiui/maml/elements/MusicController$OnClientUpdateListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->updateInfoToListener()V

    return-void
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    return-void
.end method

.method public seekTo(J)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    const/4 v0, 0x1

    return v0

    :cond_f
    goto :goto_27

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " seekTo failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAML_MusicController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    const/4 v0, 0x0

    return v0
.end method

.method public sendMediaKeyEvent(II)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_15

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setSource(I)V

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    return v1

    :cond_15
    goto :goto_2d

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send media key event failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAML_MusicController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mUpdateListener:Lmiui/maml/elements/MusicController$OnClientUpdateListener;

    return-void
.end method
