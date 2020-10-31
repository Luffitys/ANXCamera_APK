.class Lmiui/securitycenter/powercenter/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsHelper"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 11

    const-string v0, "BatteryStatsHelper"

    const-string v1, "fis close"

    const-string v2, ""

    const/4 v3, 0x0

    nop

    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    :try_start_12
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_6a

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_6b

    :try_start_21
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v8

    invoke-static {v6, v8}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v9, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3d} :catch_4e
    .catchall {:try_start_21 .. :try_end_3d} :catchall_4c

    move-object v3, v9

    :try_start_3e
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_6b

    :try_start_41
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_6b

    :goto_44
    goto :goto_6a

    :catch_45
    move-exception v8

    nop

    :goto_47
    :try_start_47
    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_6b

    nop

    goto :goto_6a

    :catchall_4c
    move-exception v8

    goto :goto_5d

    :catch_4e
    move-exception v8

    :try_start_4f
    const-string v9, "Unable to read statistics stream"

    invoke-static {v0, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4c

    :try_start_54
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_6b

    :try_start_57
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_6b

    goto :goto_44

    :catch_5b
    move-exception v8

    goto :goto_47

    :goto_5d
    :try_start_5d
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_6b

    :try_start_60
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_6b

    goto :goto_68

    :catch_64
    move-exception v9

    :try_start_65
    invoke-static {v2, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    nop

    throw v8
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    goto :goto_71

    :catch_6b
    move-exception v1

    const-string v2, "remote exception:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_71
    return-object v3
.end method

.method private static readFully(Ljava/io/FileInputStream;I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, p1, [B

    :goto_3
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_c

    return-object v1

    :cond_c
    add-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    array-length v3, v1

    sub-int/2addr v3, v0

    if-le p1, v3, :cond_1e

    add-int v3, v0, p1

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    :cond_1e
    goto :goto_3
.end method
