.class public abstract Lcom/xiaomi/mirror/IMirrorService$Stub;
.super Landroid/os/Binder;
.source "IMirrorService.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorService"

.field static final TRANSACTION_addMirrorStateListener:I = 0x1

.field static final TRANSACTION_cancelDragAndDrop:I = 0xa

.field static final TRANSACTION_grantUriPermissionsToPackage:I = 0x5

.field static final TRANSACTION_injectDragEvent:I = 0x8

.field static final TRANSACTION_onRemoteMenuActionCall:I = 0xd

.field static final TRANSACTION_performDrag:I = 0x7

.field static final TRANSACTION_registerDelegate:I = 0x3

.field static final TRANSACTION_removeMirrorStateListener:I = 0x2

.field static final TRANSACTION_reportDropResult:I = 0x9

.field static final TRANSACTION_revokePermissions:I = 0x6

.field static final TRANSACTION_setDragAcceptable:I = 0xc

.field static final TRANSACTION_unregisterDelegate:I = 0x4

.field static final TRANSACTION_updateShadow:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mirror.IMirrorService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.xiaomi.mirror.IMirrorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/mirror/IMirrorService;

    return-object v1

    :cond_14
    new-instance v1, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaomi/mirror/IMirrorService;
    .registers 1

    sget-object v0, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "onRemoteMenuActionCall"

    return-object v0

    :pswitch_8
    const-string v0, "setDragAcceptable"

    return-object v0

    :pswitch_b
    const-string v0, "updateShadow"

    return-object v0

    :pswitch_e
    const-string v0, "cancelDragAndDrop"

    return-object v0

    :pswitch_11
    const-string v0, "reportDropResult"

    return-object v0

    :pswitch_14
    const-string v0, "injectDragEvent"

    return-object v0

    :pswitch_17
    const-string v0, "performDrag"

    return-object v0

    :pswitch_1a
    const-string v0, "revokePermissions"

    return-object v0

    :pswitch_1d
    const-string v0, "grantUriPermissionsToPackage"

    return-object v0

    :pswitch_20
    const-string v0, "unregisterDelegate"

    return-object v0

    :pswitch_23
    const-string v0, "registerDelegate"

    return-object v0

    :pswitch_26
    const-string v0, "removeMirrorStateListener"

    return-object v0

    :pswitch_29
    const-string v0, "addMirrorStateListener"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/xiaomi/mirror/IMirrorService;)Z
    .registers 3

    sget-object v0, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorService;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

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

    invoke-static {p1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.xiaomi.mirror.IMirrorService"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_16c

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_170

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/xiaomi/mirror/MirrorMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/MirrorMenu;

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V

    return v11

    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v11

    :cond_3e
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->setDragAcceptable(Z)V

    return v11

    :pswitch_42
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->updateShadow(Landroid/graphics/Bitmap;)V

    return v11

    :pswitch_59
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_67
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_79

    move v0, v11

    :cond_79
    invoke-virtual {v6, v1, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_80
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaomi/mirror/IMirrorService$Stub;->injectDragEvent(IIFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    move-object v15, v0

    goto :goto_bf

    :cond_bd
    const/4 v0, 0x0

    move-object v15, v0

    :goto_bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d0

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    goto :goto_d3

    :cond_d0
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_d3
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService$Stub;->performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v11

    :pswitch_e6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f8

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    goto :goto_f9

    :cond_f8
    const/4 v0, 0x0

    :goto_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->revokePermissions(Landroid/content/ClipData;I)V

    return v11

    :pswitch_101
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService$Stub;->grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_129
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorDelegate;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->unregisterDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;)V

    return v11

    :pswitch_138
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorDelegate;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->registerDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_14e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorStateListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->removeMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V

    return v11

    :pswitch_15d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorStateListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->addMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V

    return v11

    :cond_16c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_15d
        :pswitch_14e
        :pswitch_138
        :pswitch_129
        :pswitch_101
        :pswitch_e6
        :pswitch_9a
        :pswitch_80
        :pswitch_67
        :pswitch_59
        :pswitch_42
        :pswitch_34
        :pswitch_19
    .end packed-switch
.end method
