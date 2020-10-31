.class Landroid/content/IIntentReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntentReceiver.java"

# interfaces
.implements Landroid/content/IIntentReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/content/IIntentReceiver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.content.IIntentReceiver"

    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_8
    const-string v0, "android.content.IIntentReceiver"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_18

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v11, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_81

    :goto_1b
    move/from16 v12, p2

    :try_start_1d
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_7d

    move-object/from16 v13, p3

    :try_start_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v10, :cond_2e

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    if-eqz p5, :cond_35

    move v2, v0

    goto :goto_36

    :cond_35
    move v2, v1

    :goto_36
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_3c

    move v1, v0

    :cond_3c
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_79

    move/from16 v14, p7

    :try_start_41
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_75

    move-object/from16 v15, p0

    :try_start_46
    iget-object v1, v15, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v11, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-static {}, Landroid/content/IIntentReceiver$Stub;->getDefaultImpl()Landroid/content/IIntentReceiver;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-static {}, Landroid/content/IIntentReceiver$Stub;->getDefaultImpl()Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_73

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_6e
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_73
    move-exception v0

    goto :goto_8a

    :catchall_75
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8a

    :catchall_79
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_88

    :catchall_7d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_86

    :catchall_81
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v12, p2

    :goto_86
    move-object/from16 v13, p3

    :goto_88
    move/from16 v14, p7

    :goto_8a
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
