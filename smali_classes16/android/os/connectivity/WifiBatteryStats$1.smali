.class Landroid/os/connectivity/WifiBatteryStats$1;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/WifiBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/WifiBatteryStats;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiBatteryStats;
    .registers 66

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    move-wide/from16 v1, v32

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v3, v34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    move-wide/from16 v5, v36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    move-wide/from16 v7, v38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v9, v40

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v11, v42

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v13, v44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v46

    move-wide/from16 v15, v46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    move-wide/from16 v17, v48

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v50

    move-wide/from16 v19, v50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v21, v52

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v54

    move-wide/from16 v23, v54

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v56

    move-wide/from16 v25, v56

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v58

    move-object/from16 v27, v58

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v59

    move-object/from16 v28, v59

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v60

    move-object/from16 v29, v60

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v61

    move-wide/from16 v30, v61

    new-instance v63, Landroid/os/connectivity/WifiBatteryStats;

    move-object/from16 v0, v63

    invoke-direct/range {v0 .. v31}, Landroid/os/connectivity/WifiBatteryStats;-><init>(JJJJJJJJJJJJJ[J[J[JJ)V

    return-object v63
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/connectivity/WifiBatteryStats;
    .registers 3

    new-array v0, p1, [Landroid/os/connectivity/WifiBatteryStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats$1;->newArray(I)[Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    return-object p1
.end method
