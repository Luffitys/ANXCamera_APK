.class public Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public data:[B

.field public dts:J

.field public flag:I

.field public pts:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->pts:J

    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->dts:J

    return-void
.end method
