.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source "ImplFactory.java"


# instance fields
.field private mAdditionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private detach(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;)V"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private varargs initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;[I)V"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_c

    aget v1, p3, v0

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_b

    const/16 v2, 0xab

    if-eq v1, v2, :cond_a

    const/16 v2, 0xc7

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd1

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd9

    if-eq v1, v2, :cond_5

    const/16 v2, 0xad

    if-eq v1, v2, :cond_4

    const/16 v2, 0xae

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe4

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown protocol type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->create()Lcom/android/camera/module/impl/component/CameraClickObservableImpl;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    move-result-object v1

    goto :goto_1

    :cond_9
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BeautyChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BeautyChangeImpl;

    move-result-object v1

    goto :goto_1

    :cond_a
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v1

    goto :goto_1

    :cond_b
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method public detachAdditional()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachBase()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachModulePersistent()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public varargs initAdditional(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V

    return-void
.end method

.method public varargs initBase(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V

    return-void
.end method

.method public varargs initModulePersistent(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachBase()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    return-void
.end method
