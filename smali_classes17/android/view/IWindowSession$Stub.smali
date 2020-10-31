.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_addToDisplay:I = 0x1

.field static final TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final TRANSACTION_cancelDragAndDrop:I = 0x11

.field static final TRANSACTION_dragRecipientEntered:I = 0x12

.field static final TRANSACTION_dragRecipientExited:I = 0x13

.field static final TRANSACTION_finishDrawing:I = 0xb

.field static final TRANSACTION_finishMovingTask:I = 0x1f

.field static final TRANSACTION_getDisplayFrame:I = 0xa

.field static final TRANSACTION_getInTouchMode:I = 0xd

.field static final TRANSACTION_getWindowId:I = 0x1c

.field static final TRANSACTION_grantInputChannel:I = 0x26

.field static final TRANSACTION_insetsModified:I = 0x24

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1b

.field static final TRANSACTION_outOfMemory:I = 0x7

.field static final TRANSACTION_performDrag:I = 0xf

.field static final TRANSACTION_performHapticFeedback:I = 0xe

.field static final TRANSACTION_pokeDrawLock:I = 0x1d

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x6

.field static final TRANSACTION_relayout:I = 0x5

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_reparentDisplayContent:I = 0x21

.field static final TRANSACTION_reportDropResult:I = 0x10

.field static final TRANSACTION_reportSystemGestureExclusionChanged:I = 0x25

.field static final TRANSACTION_sendWallpaperCommand:I = 0x19

.field static final TRANSACTION_setInTouchMode:I = 0xc

.field static final TRANSACTION_setInsets:I = 0x9

.field static final TRANSACTION_setShouldZoomOutWallpaper:I = 0x16

.field static final TRANSACTION_setTransparentRegion:I = 0x8

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x18

.field static final TRANSACTION_setWallpaperPosition:I = 0x14

.field static final TRANSACTION_setWallpaperZoomOut:I = 0x15

.field static final TRANSACTION_startMovingTask:I = 0x1e

.field static final TRANSACTION_updateDisplayContentLocation:I = 0x22

.field static final TRANSACTION_updateInputChannel:I = 0x27

.field static final TRANSACTION_updatePointerIcon:I = 0x20

.field static final TRANSACTION_updateTapExcludeRegion:I = 0x23

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1a

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/IWindowSession;
    .registers 1

    sget-object v0, Landroid/view/IWindowSession$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_94

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    :pswitch_9
    const-string v0, "grantInputChannel"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    :pswitch_10
    const-string v0, "insetsModified"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "updateDisplayContentLocation"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "reparentDisplayContent"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    :pswitch_23
    const-string v0, "finishMovingTask"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "pokeDrawLock"

    return-object v0

    :pswitch_2e
    const-string v0, "getWindowId"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "onRectangleOnScreenRequested"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    :pswitch_51
    const-string v0, "dragRecipientExited"

    return-object v0

    :pswitch_54
    const-string v0, "dragRecipientEntered"

    return-object v0

    :pswitch_57
    const-string v0, "cancelDragAndDrop"

    return-object v0

    :pswitch_5a
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    :pswitch_5e
    const-string/jumbo v0, "performDrag"

    return-object v0

    :pswitch_62
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    :pswitch_66
    const-string v0, "getInTouchMode"

    return-object v0

    :pswitch_69
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    :pswitch_6d
    const-string v0, "finishDrawing"

    return-object v0

    :pswitch_70
    const-string v0, "getDisplayFrame"

    return-object v0

    :pswitch_73
    const-string/jumbo v0, "setInsets"

    return-object v0

    :pswitch_77
    const-string/jumbo v0, "setTransparentRegion"

    return-object v0

    :pswitch_7b
    const-string/jumbo v0, "outOfMemory"

    return-object v0

    :pswitch_7f
    const-string/jumbo v0, "prepareToReplaceWindows"

    return-object v0

    :pswitch_83
    const-string/jumbo v0, "relayout"

    return-object v0

    :pswitch_87
    const-string/jumbo v0, "remove"

    return-object v0

    :pswitch_8b
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    :pswitch_8e
    const-string v0, "addToDisplayAsUser"

    return-object v0

    :pswitch_91
    const-string v0, "addToDisplay"

    return-object v0

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/view/IWindowSession;)Z
    .registers 3

    sget-object v0, Landroid/view/IWindowSession$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindowSession;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/view/IWindowSession$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindowSession;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 58
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_808

    const/4 v8, 0x0

    packed-switch v14, :pswitch_data_812

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_19
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    move-object v8, v0

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    move-object v8, v0

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    move-object/from16 v16, v0

    goto :goto_4e

    :cond_4b
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_4e
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;ILandroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    move-object v9, v0

    goto :goto_76

    :cond_74
    const/4 v0, 0x0

    move-object v9, v0

    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v7, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v20, v7

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IILandroid/view/InputChannel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v10}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    return v10

    :pswitch_ae
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    return v10

    :pswitch_c3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_dd

    sget-object v1, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsState;

    goto :goto_de

    :cond_dd
    const/4 v1, 0x0

    :goto_de
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->insetsModified(Landroid/view/IWindow;Landroid/view/InsetsState;)V

    return v10

    :pswitch_e2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fc

    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    goto :goto_fd

    :cond_fc
    const/4 v1, 0x0

    :goto_fd
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_104
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->updateDisplayContentLocation(Landroid/view/IWindow;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_122
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13c

    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    goto :goto_13d

    :cond_13c
    const/4 v1, 0x0

    :goto_13d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_148
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_15a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_16c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_18a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_198
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1ad

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1ae

    :cond_1ad
    const/4 v2, 0x0

    :goto_1ae
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_1b2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c8

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_1c9

    :cond_1c8
    const/4 v1, 0x0

    :goto_1c9
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1d0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e6

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_1e7

    :cond_1e6
    const/4 v1, 0x0

    :goto_1e7
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1ee
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_216

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v20, v0

    goto :goto_219

    :cond_216
    const/4 v0, 0x0

    move-object/from16 v20, v0

    :goto_219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_221

    move v7, v10

    goto :goto_222

    :cond_221
    move v7, v8

    :goto_222
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_23f

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_242

    :cond_23f
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_242
    return v10

    :pswitch_243
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_259
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_267
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_275

    move v8, v10

    :cond_275
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_27d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    return v10

    :pswitch_28c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    return v10

    :pswitch_2af
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2c1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2d3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e1

    move v8, v10

    :cond_2e1
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2e9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2fb

    move v8, v10

    :cond_2fb
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_303
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_323

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    goto :goto_326

    :cond_323
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34b

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    move-object/from16 v24, v0

    goto :goto_34e

    :cond_34b
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_34e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_36d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37b

    move v8, v10

    :cond_37b
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_387
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_395
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39f

    move v8, v10

    :cond_39f
    move v0, v8

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3a7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c1

    sget-object v1, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    goto :goto_3c2

    :cond_3c1
    const/4 v1, 0x0

    :goto_3c2
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3c9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v10}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    return v10

    :pswitch_3e7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_406

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v8, v0

    goto :goto_408

    :cond_406
    const/4 v0, 0x0

    move-object v8, v0

    :goto_408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_418

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v9, v0

    goto :goto_41a

    :cond_418
    const/4 v0, 0x0

    move-object v9, v0

    :goto_41a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42b

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    move-object/from16 v16, v0

    goto :goto_42e

    :cond_42b
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_42e
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_43d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_457

    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    goto :goto_458

    :cond_457
    const/4 v1, 0x0

    :goto_458
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_45f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_475
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_483

    move v8, v10

    :cond_483
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_48b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4ab

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    goto :goto_4ae

    :cond_4ab
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_4ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v4, v0

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v3, v0

    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v2, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_503

    const/16 v16, 0x0

    move-object/from16 v10, v16

    goto :goto_505

    :cond_503
    new-array v10, v0, [Landroid/view/InsetsSourceControl;

    :goto_505
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v31, v17

    move-object/from16 v20, v31

    new-instance v17, Landroid/view/SurfaceControl;

    invoke-direct/range {v17 .. v17}, Landroid/view/SurfaceControl;-><init>()V

    move-object/from16 v32, v17

    move-object/from16 v21, v32

    move/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v34, v1

    move-object/from16 v1, v22

    move-object/from16 v35, v2

    move/from16 v2, v23

    move-object/from16 v36, v3

    move-object/from16 v3, v24

    move-object/from16 v37, v4

    move/from16 v4, v25

    move-object/from16 v38, v5

    move/from16 v5, v26

    move-object/from16 v39, v6

    move/from16 v6, v27

    move-object/from16 v40, v7

    move/from16 v7, v28

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-wide/from16 v8, v29

    move-object/from16 v43, v10

    move-object/from16 v10, v41

    move-object/from16 v44, v11

    move-object/from16 v11, v42

    move-object/from16 v12, v40

    move-object/from16 v13, v39

    move-object/from16 v14, v38

    move-object/from16 v15, v37

    move-object/from16 v16, v36

    move-object/from16 v17, v35

    move-object/from16 v18, v34

    move-object/from16 v19, v43

    invoke-virtual/range {v0 .. v21}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v41

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v42

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, v40

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v39

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v38

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v37

    invoke-virtual {v6, v14, v15}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, v36

    invoke-virtual {v7, v14, v15}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, v35

    invoke-virtual {v8, v14, v15}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v9, v34

    invoke-virtual {v9, v14, v15}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v10, v43

    invoke-virtual {v14, v10, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v11, v31

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v12, v32

    invoke-virtual {v12, v14, v15}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    return v15

    :pswitch_5cb
    move v15, v10

    move-object/from16 v44, v11

    move-object v14, v12

    move-object/from16 v13, p2

    move-object/from16 v12, v44

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_5e7
    move-object v14, v12

    move-object v12, v11

    move-object v11, v15

    move v15, v10

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60b

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v0

    goto :goto_60e

    :cond_60b
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_60e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v19, v6

    move-object v6, v8

    move-object/from16 v20, v7

    move-object/from16 v45, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v45

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v14, v15}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    return v15

    :pswitch_661
    move-object v14, v12

    move-object v12, v11

    move-object v11, v15

    move v15, v10

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_685

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    goto :goto_688

    :cond_685
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v6, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_6c1

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_6c4

    :cond_6c1
    new-array v0, v4, [Landroid/view/InsetsSourceControl;

    move-object v3, v0

    :goto_6c4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v22, v3

    move-object/from16 v3, v18

    move/from16 v23, v4

    move/from16 v4, v19

    move-object/from16 v24, v5

    move/from16 v5, v20

    move-object/from16 v25, v6

    move/from16 v6, v21

    move-object/from16 v26, v7

    move-object v7, v10

    move-object/from16 v27, v8

    move-object v8, v9

    move-object/from16 v46, v9

    move-object/from16 v9, v27

    move-object/from16 v47, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v25

    move-object/from16 v48, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v22

    invoke-virtual/range {v0 .. v13}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v47

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v46

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, v27

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v26

    invoke-virtual {v4, v14, v15}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v25

    invoke-virtual {v5, v14, v15}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v24

    invoke-virtual {v6, v14, v15}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v7, v22

    invoke-virtual {v14, v7, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v15

    :pswitch_736
    move v15, v10

    move-object/from16 v48, v11

    move-object v14, v12

    move-object/from16 v13, p2

    move-object/from16 v12, v48

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75e

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    goto :goto_761

    :cond_75e
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_796

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_799

    :cond_796
    new-array v0, v5, [Landroid/view/InsetsSourceControl;

    move-object v4, v0

    :goto_799
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v21, v4

    move/from16 v4, v19

    move/from16 v22, v5

    move/from16 v5, v20

    move-object/from16 v23, v6

    move-object v6, v11

    move-object/from16 v24, v7

    move-object v7, v10

    move-object/from16 v25, v8

    move-object v8, v9

    move-object/from16 v49, v9

    move-object/from16 v9, v25

    move-object/from16 v50, v10

    move-object/from16 v10, v24

    move-object/from16 v51, v11

    move-object/from16 v11, v23

    move-object/from16 v52, v12

    move-object/from16 v12, v21

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v51

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v50

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, v49

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v25

    invoke-virtual {v4, v14, v15}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v24

    invoke-virtual {v5, v14, v15}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v23

    invoke-virtual {v6, v14, v15}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v7, v21

    invoke-virtual {v14, v7, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v15

    :cond_808
    move v15, v10

    move-object/from16 v52, v11

    move-object v14, v12

    move-object/from16 v0, v52

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_data_812
    .packed-switch 0x1
        :pswitch_736
        :pswitch_661
        :pswitch_5e7
        :pswitch_5cb
        :pswitch_48b
        :pswitch_475
        :pswitch_45f
        :pswitch_43d
        :pswitch_3e7
        :pswitch_3c9
        :pswitch_3a7
        :pswitch_395
        :pswitch_387
        :pswitch_36d
        :pswitch_303
        :pswitch_2e9
        :pswitch_2d3
        :pswitch_2c1
        :pswitch_2af
        :pswitch_28c
        :pswitch_27d
        :pswitch_267
        :pswitch_259
        :pswitch_243
        :pswitch_1ee
        :pswitch_1d0
        :pswitch_1b2
        :pswitch_198
        :pswitch_18a
        :pswitch_16c
        :pswitch_15a
        :pswitch_148
        :pswitch_122
        :pswitch_104
        :pswitch_e2
        :pswitch_c3
        :pswitch_ae
        :pswitch_5d
        :pswitch_19
    .end packed-switch
.end method
