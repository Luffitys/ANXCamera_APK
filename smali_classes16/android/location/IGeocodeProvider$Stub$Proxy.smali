.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/location/IGeocodeProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_a
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_71

    move-wide/from16 v12, p1

    :try_start_11
    invoke-virtual {v10, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_6f

    move-wide/from16 v14, p3

    :try_start_16
    invoke-virtual {v10, v14, v15}, Landroid/os/Parcel;->writeDouble(D)V

    move/from16 v8, p5

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_29

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    move-object/from16 v7, p0

    iget-object v2, v7, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {}, Landroid/location/IGeocodeProvider$Stub;->getDefaultImpl()Landroid/location/IGeocodeProvider;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-static {}, Landroid/location/IGeocodeProvider$Stub;->getDefaultImpl()Landroid/location/IGeocodeProvider;

    move-result-object v1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_6d

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :cond_55
    :try_start_55
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_6d

    move-object/from16 v3, p7

    :try_start_60
    invoke-virtual {v11, v3, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6b

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v1

    :catchall_6b
    move-exception v0

    goto :goto_78

    :catchall_6d
    move-exception v0

    goto :goto_76

    :catchall_6f
    move-exception v0

    goto :goto_74

    :catchall_71
    move-exception v0

    move-wide/from16 v12, p1

    :goto_74
    move-wide/from16 v14, p3

    :goto_76
    move-object/from16 v3, p7

    :goto_78
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    :try_start_a
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v12, p1

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v9, p2

    invoke-virtual {v15, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 v7, p4

    invoke-virtual {v15, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 v5, p6

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 v3, p8

    invoke-virtual {v15, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    move/from16 v11, p10

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_a0

    const/4 v0, 0x0

    if-eqz v14, :cond_3e

    const/4 v1, 0x1

    :try_start_31
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v15, v0}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_38

    goto :goto_41

    :catchall_38
    move-exception v0

    move-object/from16 v3, p12

    move-object v4, v13

    goto/16 :goto_a4

    :cond_3e
    :try_start_3e
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_41
    move-object/from16 v2, p0

    iget-object v1, v2, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v15, v13, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_a0

    if-nez v0, :cond_7e

    :try_start_4c
    invoke-static {}, Landroid/location/IGeocodeProvider$Stub;->getDefaultImpl()Landroid/location/IGeocodeProvider;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-static {}, Landroid/location/IGeocodeProvider$Stub;->getDefaultImpl()Landroid/location/IGeocodeProvider;

    move-result-object v1
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_79

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v16, v13

    move-object/from16 v13, p12

    :try_start_68
    invoke-interface/range {v1 .. v13}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_73

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_73
    move-exception v0

    move-object/from16 v3, p12

    move-object/from16 v4, v16

    goto :goto_a4

    :catchall_79
    move-exception v0

    move-object/from16 v3, p12

    move-object v4, v13

    goto :goto_a4

    :cond_7e
    move-object/from16 v16, v13

    :try_start_80
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_9a

    move-object/from16 v3, p12

    move-object/from16 v4, v16

    :try_start_8d
    invoke-virtual {v4, v3, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_98

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v1

    :catchall_98
    move-exception v0

    goto :goto_a4

    :catchall_9a
    move-exception v0

    move-object/from16 v3, p12

    move-object/from16 v4, v16

    goto :goto_a4

    :catchall_a0
    move-exception v0

    move-object/from16 v3, p12

    move-object v4, v13

    :goto_a4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.location.IGeocodeProvider"

    return-object v0
.end method
