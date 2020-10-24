.class Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source ""


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SatFusionCalibrationData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    sget p0, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;Ljava/nio/ByteBuffer;)V
    .locals 0

    iget p0, p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;->marshal(Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;-><init>(II[B)V

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    move-result-object p0

    return-object p0
.end method
