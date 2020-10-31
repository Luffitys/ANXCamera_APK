.class public final Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;
.super Ljava/lang/Object;
.source "MeasurementCorrections.java"


# instance fields
.field public altitudeMeters:D

.field public horizontalPositionUncertaintyMeters:D

.field public latitudeDegrees:D

.field public longitudeDegrees:D

.field public satCorrections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public toaGpsNanosecondsOfWeek:J

.field public verticalPositionUncertaintyMeters:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v2, :cond_37

    new-instance v5, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-direct {v5}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;-><init>()V

    mul-int/lit8 v6, v4, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_2f

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1d

    return v1

    :cond_1d
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_26

    return v1

    :cond_26
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2f

    return v1

    :cond_2f
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_38

    return v1

    :cond_38
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_41

    return v1

    :cond_41
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4a

    return v1

    :cond_4a
    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    return v1

    :cond_55
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    const-wide/16 v6, 0x30

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x38

    int-to-long v9, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v5, p3, v6

    add-long v13, v5, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_61
    if-ge v3, v4, :cond_78

    new-instance v5, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    invoke-direct {v5}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;-><init>()V

    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    move-object/from16 v8, p1

    invoke-virtual {v5, v8, v2, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_78
    move-object/from16 v8, p1

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".latitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .longitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .altitudeMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .horizontalPositionUncertaintyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .verticalPositionUncertaintyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .toaGpsNanosecondsOfWeek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .satCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-wide v4, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    iget-object v4, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x30

    add-long v7, p2, v5

    add-long/2addr v7, v2

    invoke-virtual {p1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v2, p2, v5

    const-wide/16 v7, 0xc

    add-long/2addr v2, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_51
    if-ge v3, v4, :cond_64

    iget-object v7, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    mul-int/lit8 v8, v3, 0x38

    int-to-long v8, v8

    invoke-virtual {v7, v2, v8, v9}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_64
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
