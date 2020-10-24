.class public final Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cameraMode:I

.field public input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

.field public operationMode:I

.field public output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

.field public sessionParams:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    iput v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    new-instance v0, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-direct {v0}, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;-><init>()V

    iput-object v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    new-instance v0, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-direct {v0}, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;-><init>()V

    iput-object v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

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

    mul-int/lit8 v3, v2, 0x30

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

    new-instance v4, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;

    invoke-direct {v4}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v3, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;

    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    iget v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    iget v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    iget-object v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    iget-object v3, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    iget-object p1, p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    iput v5, v0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    const-wide/16 v5, 0x4

    add-long v5, p3, v5

    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    iput v5, v0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    iget-object v5, v0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    const-wide/16 v6, 0x8

    add-long v8, p3, v6

    invoke-virtual {v5, p1, p2, v8, v9}, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v5, v0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    const-wide/16 v8, 0x14

    add-long v8, p3, v8

    invoke-virtual {v5, p1, p2, v8, v9}, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v5, v10, 0x1

    int-to-long v5, v5

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, v8, v3

    const/4 v9, 0x1

    move-wide v2, v5

    move-wide v4, v11

    move-wide v6, v7

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    mul-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iget-object v4, v0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".operationMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cameraMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .input = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .output = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .sessionParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->operationMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->cameraMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->input:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    invoke-virtual {v2, p1, v5, v6}, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->output:Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;

    const-wide/16 v5, 0x14

    add-long/2addr v5, p2

    invoke-virtual {v2, p1, v5, v6}, Lvendor/xiaomi/hardware/campostproc/V1_0/BufferParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x20

    add-long/2addr p2, v5

    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v5, v2, :cond_0

    mul-int/lit8 v4, v5, 0x1

    int-to-long v6, v4

    iget-object v4, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->sessionParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
