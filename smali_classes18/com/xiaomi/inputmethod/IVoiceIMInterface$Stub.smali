.class public abstract Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;
.super Landroid/os/Binder;
.source "IVoiceIMInterface.java"

# interfaces
.implements Lcom/xiaomi/inputmethod/IVoiceIMInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/inputmethod/IVoiceIMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.inputmethod.IVoiceIMInterface"

.field static final TRANSACTION_keyboardDisappear:I = 0x4

.field static final TRANSACTION_setMotionEvent:I = 0x1

.field static final TRANSACTION_voiceButtonDown:I = 0x2

.field static final TRANSACTION_voiceButtonUP:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.inputmethod.IVoiceIMInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/inputmethod/IVoiceIMInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.xiaomi.inputmethod.IVoiceIMInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    return-object v1

    :cond_14
    new-instance v1, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaomi/inputmethod/IVoiceIMInterface;
    .registers 1

    sget-object v0, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "keyboardDisappear"

    return-object v0

    :cond_11
    const-string v0, "voiceButtonUP"

    return-object v0

    :cond_14
    const-string v0, "voiceButtonDown"

    return-object v0

    :cond_17
    const-string v0, "setMotionEvent"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/inputmethod/IVoiceIMInterface;)Z
    .registers 3

    sget-object v0, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

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

    invoke-static {p1}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v9, "com.xiaomi.inputmethod.IVoiceIMInterface"

    const/4 v10, 0x1

    if-eq v7, v10, :cond_68

    const/4 v0, 0x2

    if-eq v7, v0, :cond_3a

    const/4 v0, 0x3

    if-eq v7, v0, :cond_2d

    const/4 v0, 0x4

    if-eq v7, v0, :cond_24

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_1e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_1e
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_24
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->keyboardDisappear()V

    return v10

    :cond_2d
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->voiceButtonUP(J)V

    return v10

    :cond_3a
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    move-object v14, v0

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    move-object v14, v0

    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->voiceButtonDown(JLandroid/os/RemoteCallback;II)V

    return v10

    :cond_68
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    invoke-virtual {v6, v0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->setMotionEvent(Landroid/view/MotionEvent;)V

    return v10
.end method
