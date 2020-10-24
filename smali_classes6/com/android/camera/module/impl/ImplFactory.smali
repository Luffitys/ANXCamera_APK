.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAdditionalProtocolList:Ljava/util/List;

.field private mBaseProtocolList:Ljava/util/List;

.field private mPersistentProtocolList:Ljava/util/List;

.field private mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized detach(Ljava/util/List;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V
    .locals 3

    iget-boolean p0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v1, p3, v0

    sparse-switch v1, :sswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown protocol type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    invoke-static {}, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_1
    invoke-static {p1}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_2
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmDreamImpl;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_3
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_4
    new-instance v1, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;-><init>(Landroid/content/res/Resources;)V

    goto/16 :goto_1

    :sswitch_5
    new-instance v1, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;-><init>()V

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    goto :goto_1

    :sswitch_7
    invoke-static {}, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    goto :goto_1

    :sswitch_8
    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_9
    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    move-result-object v1

    goto :goto_1

    :sswitch_a
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_b
    invoke-static {p1}, Lcom/android/camera/module/impl/component/KeyEventImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$KeyEvent;

    move-result-object v1

    goto :goto_1

    :sswitch_c
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    goto :goto_1

    :sswitch_d
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ShineChangeImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_e
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_f
    invoke-static {}, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->create()Lcom/android/camera/module/impl/component/CameraClickObservableImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_10
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_11
    invoke-static {p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_12
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_13
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_14
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_15
    invoke-static {}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_16
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v1

    goto :goto_1

    :sswitch_17
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_17
        0xab -> :sswitch_16
        0xad -> :sswitch_15
        0xae -> :sswitch_14
        0xc9 -> :sswitch_13
        0xd1 -> :sswitch_12
        0xd4 -> :sswitch_11
        0xd9 -> :sswitch_10
        0xe3 -> :sswitch_f
        0xe4 -> :sswitch_e
        0xea -> :sswitch_d
        0xeb -> :sswitch_c
        0xef -> :sswitch_b
        0xf1 -> :sswitch_a
        0xf6 -> :sswitch_9
        0xfc -> :sswitch_8
        0xfe -> :sswitch_7
        0xff -> :sswitch_6
        0x1ad -> :sswitch_5
        0x1ae -> :sswitch_4
        0x3a1 -> :sswitch_3
        0x3a2 -> :sswitch_2
        0x3a5 -> :sswitch_1
        0xa10 -> :sswitch_0
    .end sparse-switch
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
