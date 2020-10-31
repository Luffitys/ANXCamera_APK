.class public Lmiui/maml/elements/video/VideoElement;
.super Lmiui/maml/elements/ViewHolderScreenElement;
.source "VideoElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VideoElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Video"


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mSource:Lmiui/maml/util/MamlMediaDataSource;

.field private mView:Lmiui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Lmiui/maml/elements/video/VideoElement$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/VideoElement$1;-><init>(Lmiui/maml/elements/video/VideoElement;)V

    iput-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-direct {p0}, Lmiui/maml/elements/video/VideoElement;->load()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/video/VideoElement;)Lmiui/maml/util/MamlMediaDataSource;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    return-object v0
.end method

.method private load()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlSurface()Lmiui/maml/component/MamlSurface;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_18

    return-void

    :cond_18
    new-instance v0, Lmiui/maml/elements/video/SurfaceVideoView;

    iget-object v1, p0, Lmiui/maml/elements/video/VideoElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getMamlSurface()Lmiui/maml/component/MamlSurface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/video/SurfaceVideoView;-><init>(Landroid/content/Context;Lmiui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    iget v0, p0, Lmiui/maml/elements/video/VideoElement;->mLayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->setZOrderOnTop(Z)V

    goto :goto_49

    :cond_3a
    new-instance v0, Lmiui/maml/elements/video/NormalVideoView;

    iget-object v1, p0, Lmiui/maml/elements/video/VideoElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/maml/elements/video/NormalVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    :cond_49
    :goto_49
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    iget-object v1, p0, Lmiui/maml/elements/video/VideoElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->setFormat(I)V

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/elements/video/VideoElement;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method


# virtual methods
.method public config(ZILjava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " looping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " scaleMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_64

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-nez v0, :cond_31

    goto :goto_64

    :cond_31
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lmiui/maml/util/MamlMediaDataSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    :cond_3f
    new-instance v0, Lmiui/maml/util/MamlMediaDataSource;

    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v0, v1, v2, p3}, Lmiui/maml/util/MamlMediaDataSource;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    :cond_52
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/video/BaseVideoView;->setLooping(Z)V

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0, p2}, Lmiui/maml/elements/video/BaseVideoView;->setScaleMode(I)V

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    iget-object v1, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->setVideoDataSource(Landroid/media/MediaDataSource;)V

    return-void

    :cond_64
    :goto_64
    return-void
.end method

.method protected doTick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ViewHolderScreenElement;->doTick(J)V

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->doTick()V

    :cond_a
    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ViewHolderScreenElement;->finish()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/elements/video/VideoElement;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lmiui/maml/util/MamlMediaDataSource;->close()V

    :cond_1c
    return-void
.end method

.method protected getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    return-object v0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ViewHolderScreenElement;->init()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->init(Lmiui/maml/data/Variables;)V

    :cond_15
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Lmiui/maml/elements/video/VideoElement;->stop()V

    return-void
.end method

.method public pause()V
    .registers 3

    const-string v0, "VideoElement"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->pause()V

    :cond_15
    return-void
.end method

.method public play()V
    .registers 3

    const-string v0, "VideoElement"

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lmiui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    :cond_15
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->start()V

    :cond_1c
    return-void
.end method

.method public seekTo(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Lmiui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_24
    return-void
.end method

.method public setVolume(F)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Lmiui/maml/elements/video/BaseVideoView;->setVolume(F)V

    :cond_24
    return-void
.end method

.method public stop()V
    .registers 3

    const-string v0, "VideoElement"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->stopPlayback()V

    :cond_15
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lmiui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    :cond_1c
    return-void
.end method

.method protected updateView()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lmiui/maml/elements/video/VideoElement;->mUpdatePosition:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiui/maml/elements/video/VideoElement;->mUpdateTranslation:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiui/maml/elements/video/VideoElement;->mUpdateSize:Z

    if-eqz v0, :cond_15

    :cond_10
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement;->mView:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/video/VideoElement;->onUpdateView(Landroid/view/View;)V

    :cond_15
    return-void
.end method
