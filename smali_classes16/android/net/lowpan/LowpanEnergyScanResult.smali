.class public Landroid/net/lowpan/LowpanEnergyScanResult;
.super Ljava/lang/Object;
.source "LowpanEnergyScanResult.java"


# static fields
.field public static final UNKNOWN:I = 0x7fffffff


# instance fields
.field private mChannel:I

.field private mMaxRssi:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return-void
.end method


# virtual methods
.method public getChannel()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return v0
.end method

.method public getMaxRssi()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return v0
.end method

.method setChannel(I)V
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return-void
.end method

.method setMaxRssi(I)V
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LowpanEnergyScanResult(channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRssi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
