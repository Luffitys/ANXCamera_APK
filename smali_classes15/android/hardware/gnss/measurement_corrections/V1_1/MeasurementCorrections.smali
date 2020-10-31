.class public final Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
.super Ljava/lang/Object;
.source "MeasurementCorrections.java"


# instance fields
.field public environmentBearingDegrees:F

.field public environmentBearingUncertaintyDegrees:F

.field public hasEnvironmentBearing:Z

.field public satCorrections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;",
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

    mul-int/lit8 v3, v2, 0x60

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

    new-instance v5, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    invoke-direct {v5}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;-><init>()V

    mul-int/lit8 v6, v4, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;",
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

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_2f

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .registers 7

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

    const-class v3, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    iget-object v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v1

    :cond_1f
    iget-boolean v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    if-eq v3, v4, :cond_26

    return v1

    :cond_26
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2f

    return v1

    :cond_2f
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_38

    return v1

    :cond_38
    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    return v1

    :cond_43
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    const-wide/16 v4, 0x44

    add-long v4, p3, v4

    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    const-wide/16 v4, 0x50

    add-long v6, p3, v4

    const-wide/16 v11, 0x8

    add-long/2addr v6, v11

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v1, v11, 0x40

    int-to-long v6, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v12

    move-wide v6, v14

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_53
    if-ge v2, v11, :cond_68

    new-instance v3, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;

    invoke-direct {v3}, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;-><init>()V

    mul-int/lit8 v4, v2, 0x40

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_68
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .hasEnvironmentBearing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .environmentBearingDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .environmentBearingUncertaintyDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .satCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x40

    add-long/2addr v3, p2

    iget-boolean v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v3, 0x44

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v3, 0x48

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putFloat(JF)V

    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x50

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x40

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v6, 0x0

    :goto_42
    if-ge v6, v0, :cond_55

    iget-object v7, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;

    mul-int/lit8 v8, v6, 0x40

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_55
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
