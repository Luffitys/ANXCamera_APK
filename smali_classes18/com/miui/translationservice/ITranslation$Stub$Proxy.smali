.class Lcom/miui/translationservice/ITranslation$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITranslation.java"

# interfaces
.implements Lcom/miui/translationservice/ITranslation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/ITranslation$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/translationservice/ITranslation;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.miui.translationservice.ITranslation"

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.translationservice.ITranslation"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/miui/translationservice/ITranslationRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/miui/translationservice/ITranslation$Stub;->getDefaultImpl()Lcom/miui/translationservice/ITranslation;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/miui/translationservice/ITranslation$Stub;->getDefaultImpl()Lcom/miui/translationservice/ITranslation;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/miui/translationservice/ITranslation;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_77

    move/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_75

    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_73

    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_71

    move-object/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6f

    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p8, :cond_38

    invoke-interface/range {p8 .. p8}, Lcom/miui/translationservice/ITranslationRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_39

    :cond_38
    move-object v3, v2

    :goto_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v9, p0

    iget-object v3, v9, Lcom/miui/translationservice/ITranslation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {}, Lcom/miui/translationservice/ITranslation$Stub;->getDefaultImpl()Lcom/miui/translationservice/ITranslation;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-static {}, Lcom/miui/translationservice/ITranslation$Stub;->getDefaultImpl()Lcom/miui/translationservice/ITranslation;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/miui/translationservice/ITranslation;->translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_64
    .catchall {:try_start_28 .. :try_end_64} :catchall_6d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_68
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_6d
    move-exception v0

    goto :goto_82

    :catchall_6f
    move-exception v0

    goto :goto_80

    :catchall_71
    move-exception v0

    goto :goto_7e

    :catchall_73
    move-exception v0

    goto :goto_7c

    :catchall_75
    move-exception v0

    goto :goto_7a

    :catchall_77
    move-exception v0

    move/from16 v11, p2

    :goto_7a
    move-object/from16 v12, p3

    :goto_7c
    move/from16 v13, p4

    :goto_7e
    move-object/from16 v14, p5

    :goto_80
    move-object/from16 v15, p6

    :goto_82
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
