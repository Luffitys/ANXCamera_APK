.class Landroid/os/connectivity/WifiActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/WifiActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/WifiActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    new-instance v23, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object/from16 v0, v23

    move-wide v1, v12

    move v3, v14

    move-wide v4, v15

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    move-wide/from16 v10, v21

    invoke-direct/range {v0 .. v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    return-object v23
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 3

    new-array v0, p1, [Landroid/os/connectivity/WifiActivityEnergyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;->newArray(I)[Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method
