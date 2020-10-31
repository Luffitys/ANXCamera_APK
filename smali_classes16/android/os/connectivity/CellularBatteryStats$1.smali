.class Landroid/os/connectivity/CellularBatteryStats$1;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/CellularBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/CellularBatteryStats;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/CellularBatteryStats;
    .registers 53

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v1, v25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    move-wide/from16 v3, v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    move-wide/from16 v5, v29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    move-wide/from16 v7, v31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    move-wide/from16 v9, v33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    move-wide/from16 v11, v35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v37

    move-wide/from16 v13, v37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    move-wide/from16 v15, v39

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v41

    move-wide/from16 v17, v41

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v43

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v45

    move-object/from16 v20, v45

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v46

    move-object/from16 v21, v46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v47

    move-object/from16 v22, v47

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    move-wide/from16 v23, v48

    new-instance v50, Landroid/os/connectivity/CellularBatteryStats;

    move-object/from16 v0, v50

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-direct/range {v0 .. v24}, Landroid/os/connectivity/CellularBatteryStats;-><init>(JJJJJJJJJLjava/lang/Long;[J[J[JJ)V

    return-object v50
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/connectivity/CellularBatteryStats;
    .registers 3

    new-array v0, p1, [Landroid/os/connectivity/CellularBatteryStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats$1;->newArray(I)[Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p1

    return-object p1
.end method
