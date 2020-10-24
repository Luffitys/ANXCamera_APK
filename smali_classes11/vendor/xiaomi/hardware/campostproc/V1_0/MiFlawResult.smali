.class public final Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public eye_close:B

.field public face_blur:B

.field public flaw_result:I

.field public occlusion:B

.field public person_cls:I

.field public prob_eyeclose:F

.field public prob_faceblur:F

.field public prob_occlusion:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    iput-byte v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    iput-byte v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    iput v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    const/4 v1, 0x0

    iput v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    iput v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    iput v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    iput v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;

    invoke-direct {v4}, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;-><init>()V

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7

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

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;

    iget-byte v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    iget-byte v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-byte v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    iget-byte v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-byte v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    iget-byte v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    iget v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    iget v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    iget v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    iget v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    iget p1, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    if-eq p0, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    const-wide/16 v0, 0x14

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".face_blur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .eye_close = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .occlusion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .person_cls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .prob_eyeclose = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .prob_occlusion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .prob_faceblur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .flaw_result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->face_blur:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->eye_close:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->occlusion:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->person_cls:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_eyeclose:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_occlusion:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->prob_faceblur:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v0, 0x14

    add-long/2addr p2, v0

    iget p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->flaw_result:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/xiaomi/hardware/campostproc/V1_0/MiFlawResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
