.class Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/wallpaper/IWallpaperService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_6
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/service/wallpaper/IWallpaperConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_7e

    move-object/from16 v12, p2

    :try_start_19
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7c

    move/from16 v13, p3

    :try_start_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_27

    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_7a

    move/from16 v14, p5

    :try_start_2d
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_78

    move/from16 v15, p6

    :try_start_32
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v10, :cond_3e

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_41

    :cond_3e
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_41
    move/from16 v9, p8

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, p0

    iget-object v1, v8, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, v2, v11, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultImpl()Landroid/service/wallpaper/IWallpaperService;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-static {}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultImpl()Landroid/service/wallpaper/IWallpaperService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V
    :try_end_6d
    .catchall {:try_start_32 .. :try_end_6d} :catchall_76

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_71
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_76
    move-exception v0

    goto :goto_87

    :catchall_78
    move-exception v0

    goto :goto_85

    :catchall_7a
    move-exception v0

    goto :goto_83

    :catchall_7c
    move-exception v0

    goto :goto_81

    :catchall_7e
    move-exception v0

    move-object/from16 v12, p2

    :goto_81
    move/from16 v13, p3

    :goto_83
    move/from16 v14, p5

    :goto_85
    move/from16 v15, p6

    :goto_87
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public detach()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.wallpaper.IWallpaperService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultImpl()Landroid/service/wallpaper/IWallpaperService;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultImpl()Landroid/service/wallpaper/IWallpaperService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.wallpaper.IWallpaperService"

    return-object v0
.end method
