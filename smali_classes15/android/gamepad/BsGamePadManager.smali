.class public Landroid/gamepad/BsGamePadManager;
.super Ljava/lang/Object;
.source "BsGamePadManager.java"


# static fields
.field private static final BS_GAMEPAD2_LEFT_PRODUCT_ID:I = 0x102

.field private static final GAMEBUTTON_BUTTON_A:I = 0x2

.field private static final GAMEBUTTON_BUTTON_B:I = 0x3

.field private static final GAMEBUTTON_BUTTON_L1:I = 0x6

.field private static final GAMEBUTTON_BUTTON_L2:I = 0x8

.field private static final GAMEBUTTON_BUTTON_X:I = 0x4

.field private static final GAMEBUTTON_BUTTON_Y:I = 0x5

.field private static final GAMEBUTTON_DIRECTION_PAD_L:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BsGamePadManager"


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mGameKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/gamepad/BsGameKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mGamePadMapper:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/BitSet;",
            "Landroid/gamepad/BsGameKeyMapList;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Landroid/gamepad/IBsGamePadService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/gamepad/IBsGamePadService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/gamepad/BsGamePadManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    return-void
.end method


# virtual methods
.method public addKey(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BsGamePadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_25
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKey;

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v2

    if-ne v2, p1, :cond_42

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v2

    if-ne v2, p2, :cond_42

    goto :goto_45

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_45
    :goto_45
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4e

    return-void

    :cond_4e
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    new-instance v2, Landroid/gamepad/BsGameKey;

    invoke-direct {v2, p1, p2}, Landroid/gamepad/BsGameKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addKeyMap(IFFF)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x102

    if-eq p1, v1, :cond_63

    const/16 v1, 0x8

    if-eq p1, v1, :cond_5b

    const/16 v1, 0x10

    if-eq p1, v1, :cond_53

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4b

    const/16 v1, 0x40

    if-eq p1, v1, :cond_43

    const/16 v1, 0x100

    if-eq p1, v1, :cond_3b

    const/16 v1, 0x400

    if-eq p1, v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addKeyMap: touchMask = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BsGamePadManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_35
    const/4 v1, -0x3

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/4 v0, -0x3

    goto :goto_6b

    :cond_3b
    const/16 v1, 0x68

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/16 v0, 0x68

    goto :goto_6b

    :cond_43
    const/16 v1, 0x66

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/16 v0, 0x66

    goto :goto_6b

    :cond_4b
    const/16 v1, 0x64

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/16 v0, 0x64

    goto :goto_6b

    :cond_53
    const/16 v1, 0x63

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/16 v0, 0x63

    goto :goto_6b

    :cond_5b
    const/16 v1, 0x61

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/16 v0, 0x61

    goto :goto_6b

    :cond_63
    const/16 v1, 0x60

    invoke-virtual {p0, v2, v1}, Landroid/gamepad/BsGamePadManager;->addKey(II)V

    const/16 v0, 0x60

    nop

    :goto_6b
    const/4 v1, 0x0

    :goto_6c
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9e

    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gamepad/BsGameKey;

    invoke-virtual {v3}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v4

    if-ne v4, v2, :cond_9b

    invoke-virtual {v3}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v4

    if-ne v4, v0, :cond_9b

    new-instance v2, Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v2

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/gamepad/BsGamePadManager;->addKeyMap(Ljava/util/BitSet;FFFI)V

    goto :goto_9e

    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_9e
    :goto_9e
    return-void
.end method

.method public addKeyMap(Ljava/util/BitSet;FFFI)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addKeyMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BsGamePadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3e
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_58

    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    nop

    goto :goto_6a

    :cond_58
    new-instance v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-direct {v2}, Landroid/gamepad/BsGameKeyMapList;-><init>()V

    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3e .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public loadKey()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/gamepad/IBsGamePadService;->loadKey(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadKeyMap(ZI)V
    .registers 4

    invoke-virtual {p0}, Landroid/gamepad/BsGamePadManager;->loadKey()V

    const/16 v0, 0x102

    invoke-virtual {p0, v0, p2}, Landroid/gamepad/BsGamePadManager;->setDeviceRotation(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/gamepad/BsGamePadManager;->loadKeyMap(ZZ)V

    return-void
.end method

.method public loadKeyMap(ZZ)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-interface {v0, v1, p1, p2}, Landroid/gamepad/IBsGamePadService;->loadKeyMap(Ljava/util/Map;ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppSwitch(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1}, Landroid/gamepad/IBsGamePadService;->setAppSwitch(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDeviceRotation(II)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1, p2}, Landroid/gamepad/IBsGamePadService;->setDeviceRotation(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(Ljava/util/BitSet;I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BsGamePadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_27
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3b

    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-virtual {v2, p2}, Landroid/gamepad/BsGameKeyMapList;->setMode(I)V

    goto :goto_48

    :cond_3b
    new-instance v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-direct {v2}, Landroid/gamepad/BsGameKeyMapList;-><init>()V

    invoke-virtual {v2, p2}, Landroid/gamepad/BsGameKeyMapList;->setMode(I)V

    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public setMouseKey(III)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMouseKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BsGamePadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_29
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKey;

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v2

    if-ne v2, p1, :cond_49

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v2

    if-ne v2, p2, :cond_49

    invoke-virtual {v1, p3}, Landroid/gamepad/BsGameKey;->setMouseKey(I)V

    return-void

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_4c
    return-void
.end method

.method public setMouseSensitivity(IIFF)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMouseSensitivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BsGamePadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_36

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_36
    cmpg-float v0, p4, v0

    if-gtz v0, :cond_3c

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_3c
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_40
    :try_start_40
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKey;

    invoke-virtual {v2}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v3

    if-ne v3, p1, :cond_64

    invoke-virtual {v2}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v3

    if-ne v3, p2, :cond_64

    invoke-virtual {v2, p3}, Landroid/gamepad/BsGameKey;->setMouseVerticalSensitivity(F)V

    invoke-virtual {v2, p4}, Landroid/gamepad/BsGameKey;->setMouseHorizontalSensitivity(F)V

    monitor-exit v0

    return-void

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_40 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public unloadKeyMap()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gamepad/BsGamePadManager;->unloadKeyMap(Z)V

    return-void
.end method

.method public unloadKeyMap(Z)V
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :try_start_a
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1}, Landroid/gamepad/IBsGamePadService;->unloadKeyMap(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    nop

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
