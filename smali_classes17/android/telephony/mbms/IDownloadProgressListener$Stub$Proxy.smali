.class Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDownloadProgressListener.java"

# interfaces
.implements Landroid/telephony/mbms/IDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IDownloadProgressListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/telephony/mbms/IDownloadProgressListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.telephony.mbms.IDownloadProgressListener"

    return-object v0
.end method

.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_c
    const-string v0, "android.telephony.mbms.IDownloadProgressListener"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_1c

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v10, v1}, Landroid/telephony/mbms/DownloadRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    :cond_1c
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1f
    if-eqz v9, :cond_28

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/telephony/mbms/FileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b

    :cond_28
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_7c

    :goto_2b
    move/from16 v12, p3

    :try_start_2d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_7a

    move/from16 v13, p4

    :try_start_32
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_78

    move/from16 v14, p5

    :try_start_37
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_76

    move/from16 v15, p6

    :try_start_3c
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    iget-object v2, v7, Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-static {}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->getDefaultImpl()Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-static {}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->getDefaultImpl()Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/telephony/mbms/IDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_74

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_69
    :try_start_69
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_74

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_74
    move-exception v0

    goto :goto_85

    :catchall_76
    move-exception v0

    goto :goto_83

    :catchall_78
    move-exception v0

    goto :goto_81

    :catchall_7a
    move-exception v0

    goto :goto_7f

    :catchall_7c
    move-exception v0

    move/from16 v12, p3

    :goto_7f
    move/from16 v13, p4

    :goto_81
    move/from16 v14, p5

    :goto_83
    move/from16 v15, p6

    :goto_85
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
