.class Landroid/content/IIntentSender$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntentSender.java"

# interfaces
.implements Landroid/content/IIntentSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentSender$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/content/IIntentSender;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IIntentSender$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/content/IIntentSender$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.content.IIntentSender"

    return-object v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p2

    move-object/from16 v10, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_8
    const-string v0, "android.content.IIntentSender"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7d

    move/from16 v12, p1

    :try_start_f
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_1d

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v11, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :cond_1d
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_7b

    :goto_20
    move-object/from16 v13, p3

    :try_start_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_79

    move-object/from16 v14, p4

    :try_start_27
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p5, :cond_32

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_33

    :cond_32
    move-object v3, v2

    :goto_33
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_77

    move-object/from16 v15, p6

    :try_start_38
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v10, :cond_44

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_47

    :cond_44
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_47
    move-object/from16 v8, p0

    iget-object v1, v8, Landroid/content/IIntentSender$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, v0, v11, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_70

    invoke-static {}, Landroid/content/IIntentSender$Stub;->getDefaultImpl()Landroid/content/IIntentSender;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-static {}, Landroid/content/IIntentSender$Stub;->getDefaultImpl()Landroid/content/IIntentSender;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6c
    .catchall {:try_start_38 .. :try_end_6c} :catchall_75

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_70
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_75
    move-exception v0

    goto :goto_86

    :catchall_77
    move-exception v0

    goto :goto_84

    :catchall_79
    move-exception v0

    goto :goto_82

    :catchall_7b
    move-exception v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move/from16 v12, p1

    :goto_80
    move-object/from16 v13, p3

    :goto_82
    move-object/from16 v14, p4

    :goto_84
    move-object/from16 v15, p6

    :goto_86
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
