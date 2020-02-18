.class Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;
.super Ljava/lang/Object;
.source "MediaCodecUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findBestMatchedProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 6
    .param p0    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ge v5, v4, :cond_2

    :cond_1
    move-object v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method
