.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0xc

.field static final TRANSACTION_dispatchAppVisibility:I = 0x9

.field static final TRANSACTION_dispatchDragEvent:I = 0xf

.field static final TRANSACTION_dispatchGetNewSurface:I = 0xa

.field static final TRANSACTION_dispatchPointerCaptureChanged:I = 0x14

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0x11

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0xe

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0xd

.field static final TRANSACTION_dispatchWindowShown:I = 0x12

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_hideInsets:I = 0x7

.field static final TRANSACTION_insetsChanged:I = 0x4

.field static final TRANSACTION_insetsControlChanged:I = 0x5

.field static final TRANSACTION_locationInParentDisplayChanged:I = 0x3

.field static final TRANSACTION_moved:I = 0x8

.field static final TRANSACTION_notifyCastMode:I = 0x16

.field static final TRANSACTION_notifyProjectionMode:I = 0x18

.field static final TRANSACTION_notifyRotationChanged:I = 0x17

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x13

.field static final TRANSACTION_requestScrollCapture:I = 0x15

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_showInsets:I = 0x6

.field static final TRANSACTION_updatePointerIcon:I = 0x10

.field static final TRANSACTION_windowFocusChanged:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/IWindow;
    .registers 1

    sget-object v0, Landroid/view/IWindow$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindow;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_58

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "notifyProjectionMode"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "notifyRotationChanged"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "notifyCastMode"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    :pswitch_15
    const-string v0, "dispatchPointerCaptureChanged"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    :pswitch_1c
    const-string v0, "dispatchWindowShown"

    return-object v0

    :pswitch_1f
    const-string v0, "dispatchSystemUiVisibilityChanged"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    :pswitch_26
    const-string v0, "dispatchDragEvent"

    return-object v0

    :pswitch_29
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    :pswitch_2c
    const-string v0, "dispatchWallpaperOffsets"

    return-object v0

    :pswitch_2f
    const-string v0, "closeSystemDialogs"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "windowFocusChanged"

    return-object v0

    :pswitch_36
    const-string v0, "dispatchGetNewSurface"

    return-object v0

    :pswitch_39
    const-string v0, "dispatchAppVisibility"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "moved"

    return-object v0

    :pswitch_40
    const-string v0, "hideInsets"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "showInsets"

    return-object v0

    :pswitch_47
    const-string v0, "insetsControlChanged"

    return-object v0

    :pswitch_4a
    const-string v0, "insetsChanged"

    return-object v0

    :pswitch_4d
    const-string v0, "locationInParentDisplayChanged"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "resized"

    return-object v0

    :pswitch_54
    const-string v0, "executeCommand"

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/view/IWindow;)Z
    .registers 3

    sget-object v0, Landroid/view/IWindow$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindow;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/view/IWindow$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindow;

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

    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "android.view.IWindow"

    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v13, v0, :cond_2c2

    const/4 v0, 0x0

    packed-switch v13, :pswitch_data_2c8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_18
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move/from16 v0, v16

    :cond_23
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->notifyProjectionMode(Z)V

    return v16

    :pswitch_27
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    move/from16 v0, v16

    :cond_32
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->notifyRotationChanged(Z)V

    return v16

    :pswitch_36
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    move/from16 v0, v16

    :cond_41
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->notifyCastMode(Z)V

    return v16

    :pswitch_45
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IScrollCaptureController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureController;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureController;)V

    return v16

    :pswitch_54
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    move/from16 v0, v16

    :cond_5f
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->dispatchPointerCaptureChanged(Z)V

    return v16

    :pswitch_63
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    return v16

    :pswitch_76
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    return v16

    :pswitch_7d
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    return v16

    :pswitch_94
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    return v16

    :pswitch_a3
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b5

    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DragEvent;

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    :goto_b6
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    return v16

    :pswitch_ba
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_dd

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    goto :goto_df

    :cond_dd
    const/4 v1, 0x0

    move-object v11, v1

    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e8

    move/from16 v6, v16

    goto :goto_e9

    :cond_e8
    move v6, v0

    :goto_e9
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    return v16

    :pswitch_f4
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_114

    move/from16 v6, v16

    goto :goto_115

    :cond_114
    move v6, v0

    :goto_115
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFFZ)V

    return v16

    :pswitch_120
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    return v16

    :pswitch_12b
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_137

    move/from16 v1, v16

    goto :goto_138

    :cond_137
    move v1, v0

    :goto_138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_140

    move/from16 v0, v16

    :cond_140
    invoke-virtual {v12, v1, v0}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    return v16

    :pswitch_144
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    return v16

    :pswitch_14b
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_156

    move/from16 v0, v16

    :cond_156
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    return v16

    :pswitch_15a
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    return v16

    :pswitch_169
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_178

    move/from16 v0, v16

    :cond_178
    invoke-virtual {v12, v1, v0}, Landroid/view/IWindow$Stub;->hideInsets(IZ)V

    return v16

    :pswitch_17c
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18b

    move/from16 v0, v16

    :cond_18b
    invoke-virtual {v12, v1, v0}, Landroid/view/IWindow$Stub;->showInsets(IZ)V

    return v16

    :pswitch_18f
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a1

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    goto :goto_1a2

    :cond_1a1
    const/4 v0, 0x0

    :goto_1a2
    sget-object v1, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/InsetsSourceControl;

    invoke-virtual {v12, v0, v1}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return v16

    :pswitch_1ae
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c0

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    goto :goto_1c1

    :cond_1c0
    const/4 v0, 0x0

    :goto_1c1
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->insetsChanged(Landroid/view/InsetsState;)V

    return v16

    :pswitch_1c5
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d7

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    goto :goto_1d8

    :cond_1d7
    const/4 v0, 0x0

    :goto_1d8
    invoke-virtual {v12, v0}, Landroid/view/IWindow$Stub;->locationInParentDisplayChanged(Landroid/graphics/Point;)V

    return v16

    :pswitch_1dc
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v17, v1

    goto :goto_1f3

    :cond_1f0
    const/4 v1, 0x0

    move-object/from16 v17, v1

    :goto_1f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_204

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v18, v1

    goto :goto_207

    :cond_204
    const/4 v1, 0x0

    move-object/from16 v18, v1

    :goto_207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_218

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v19, v1

    goto :goto_21b

    :cond_218
    const/4 v1, 0x0

    move-object/from16 v19, v1

    :goto_21b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22c

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v20, v1

    goto :goto_22f

    :cond_22c
    const/4 v1, 0x0

    move-object/from16 v20, v1

    :goto_22f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_238

    move/from16 v5, v16

    goto :goto_239

    :cond_238
    move v5, v0

    :goto_239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24a

    sget-object v1, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MergedConfiguration;

    move-object/from16 v21, v1

    goto :goto_24d

    :cond_24a
    const/4 v1, 0x0

    move-object/from16 v21, v1

    :goto_24d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25e

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v22, v1

    goto :goto_261

    :cond_25e
    const/4 v1, 0x0

    move-object/from16 v22, v1

    :goto_261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26a

    move/from16 v8, v16

    goto :goto_26b

    :cond_26a
    move v8, v0

    :goto_26b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_274

    move/from16 v9, v16

    goto :goto_275

    :cond_274
    move v9, v0

    :goto_275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28a

    sget-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v24, v0

    goto :goto_28d

    :cond_28a
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_28d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    return v16

    :pswitch_2a3
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2bd

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_2be

    :cond_2bd
    const/4 v2, 0x0

    :goto_2be
    invoke-virtual {v12, v0, v1, v2}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return v16

    :cond_2c2
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v16

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_2a3
        :pswitch_1dc
        :pswitch_1c5
        :pswitch_1ae
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_15a
        :pswitch_14b
        :pswitch_144
        :pswitch_12b
        :pswitch_120
        :pswitch_f4
        :pswitch_ba
        :pswitch_a3
        :pswitch_94
        :pswitch_7d
        :pswitch_76
        :pswitch_63
        :pswitch_54
        :pswitch_45
        :pswitch_36
        :pswitch_27
        :pswitch_18
    .end packed-switch
.end method
