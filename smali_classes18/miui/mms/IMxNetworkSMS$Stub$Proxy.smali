.class Lmiui/mms/IMxNetworkSMS$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMxNetworkSMS.java"

# interfaces
.implements Lmiui/mms/IMxNetworkSMS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mms/IMxNetworkSMS$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmiui/mms/IMxNetworkSMS;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "miui.mms.IMxNetworkSMS"

    return-object v0
.end method

.method public isMxOnline(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.mms.IMxNetworkSMS"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lmiui/mms/IMxNetworkSMS$Stub;->getDefaultImpl()Lmiui/mms/IMxNetworkSMS;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-static {}, Lmiui/mms/IMxNetworkSMS$Stub;->getDefaultImpl()Lmiui/mms/IMxNetworkSMS;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiui/mms/IMxNetworkSMS;->isMxOnline(Ljava/lang/String;)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    if-eqz v5, :cond_39

    move v3, v4

    :cond_39
    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public sendNetwokSMS(Ljava/lang/String;Ljava/lang/String;JZI)[Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "miui.mms.IMxNetworkSMS"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_76

    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_72

    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6e

    move-wide/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    if-eqz p5, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    move v3, v0

    :goto_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_6a

    move/from16 v14, p6

    :try_start_27
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_66

    move-object/from16 v15, p0

    :try_start_2c
    iget-object v3, v15, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {}, Lmiui/mms/IMxNetworkSMS$Stub;->getDefaultImpl()Lmiui/mms/IMxNetworkSMS;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-static {}, Lmiui/mms/IMxNetworkSMS$Stub;->getDefaultImpl()Lmiui/mms/IMxNetworkSMS;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lmiui/mms/IMxNetworkSMS;->sendNetwokSMS(Ljava/lang/String;Ljava/lang/String;JZI)[Ljava/lang/String;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_64

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_54
    :try_start_54
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_64

    move-object v0, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v0

    :catchall_64
    move-exception v0

    goto :goto_81

    :catchall_66
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_81

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7d

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7b

    :catchall_76
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    :goto_7b
    move-object/from16 v11, p2

    :goto_7d
    move-wide/from16 v12, p3

    :goto_7f
    move/from16 v14, p6

    :goto_81
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
