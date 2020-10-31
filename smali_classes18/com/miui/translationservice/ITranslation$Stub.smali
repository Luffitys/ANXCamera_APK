.class public abstract Lcom/miui/translationservice/ITranslation$Stub;
.super Landroid/os/Binder;
.source "ITranslation.java"

# interfaces
.implements Lcom/miui/translationservice/ITranslation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/ITranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/ITranslation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.translationservice.ITranslation"

.field static final TRANSACTION_translate:I = 0x1

.field static final TRANSACTION_translateByEngine:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p0, p0, v0}, Lcom/miui/translationservice/ITranslation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.translationservice.ITranslation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/translationservice/ITranslation;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/translationservice/ITranslation;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/translationservice/ITranslation$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/translationservice/ITranslation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/translationservice/ITranslation;
    .registers 1

    sget-object v0, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->sDefaultImpl:Lcom/miui/translationservice/ITranslation;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, "translateByEngine"

    return-object v0

    :cond_b
    const-string v0, "translate"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/translationservice/ITranslation;)Z
    .registers 3

    sget-object v0, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->sDefaultImpl:Lcom/miui/translationservice/ITranslation;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->sDefaultImpl:Lcom/miui/translationservice/ITranslation;

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

    invoke-static {p1}, Lcom/miui/translationservice/ITranslation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.miui.translationservice.ITranslation"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1c

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_16

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :cond_16
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1c
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    move v7, v3

    goto :goto_2b

    :cond_29
    const/4 v5, 0x0

    move v7, v5

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v20

    move-object/from16 v6, p0

    move v8, v5

    move-object v9, v15

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    invoke-virtual/range {v6 .. v14}, Lcom/miui/translationservice/ITranslation$Stub;->translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    return v3

    :cond_5d
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v8

    move-object/from16 v9, p0

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/miui/translationservice/ITranslation$Stub;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    return v3
.end method
