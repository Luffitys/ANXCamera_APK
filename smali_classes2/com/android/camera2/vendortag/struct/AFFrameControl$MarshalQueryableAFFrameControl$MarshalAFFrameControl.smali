.class Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl$MarshalAFFrameControl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "AFFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalAFFrameControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/AFFrameControl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;


# direct methods
.method protected constructor <init>(Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/AFFrameControl;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl$MarshalAFFrameControl;->this$0:Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x398

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/AFFrameControl;Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$000(Lcom/android/camera2/vendortag/struct/AFFrameControl;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$100(Lcom/android/camera2/vendortag/struct/AFFrameControl;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$200(Lcom/android/camera2/vendortag/struct/AFFrameControl;)Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object p0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->sampleCount:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$200(Lcom/android/camera2/vendortag/struct/AFFrameControl;)Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityX:[F

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$200(Lcom/android/camera2/vendortag/struct/AFFrameControl;)Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityY:[F

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_2
    if-ge v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$200(Lcom/android/camera2/vendortag/struct/AFFrameControl;)Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityZ:[F

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge p0, v1, :cond_3

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->access$200(Lcom/android/camera2/vendortag/struct/AFFrameControl;)Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->timeStamp:[J

    aget-wide v2, v0, p0

    long-to-float v0, v2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/AFFrameControl;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl$MarshalAFFrameControl;->marshal(Lcom/android/camera2/vendortag/struct/AFFrameControl;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/AFFrameControl;
    .locals 7

    new-instance p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move v3, v0

    :goto_1
    const/16 v4, 0x2f

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_2
    const/16 v4, 0x18

    if-ge v3, v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->sampleCount:I

    move v3, v0

    :goto_3
    const/16 v4, 0x20

    if-ge v3, v4, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityX:[F

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_4
    if-ge v3, v4, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityY:[F

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_5
    if-ge v3, v4, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityZ:[F

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    :goto_6
    if-ge v0, v4, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iget-object v3, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->timeStamp:[J

    aput-wide v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    new-instance p1, Lcom/android/camera2/vendortag/struct/AFFrameControl;

    invoke-direct {p1, v1, v2, p0}, Lcom/android/camera2/vendortag/struct/AFFrameControl;-><init>(IILcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;)V

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl$MarshalAFFrameControl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/AFFrameControl;

    move-result-object p0

    return-object p0
.end method
