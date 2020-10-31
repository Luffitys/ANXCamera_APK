.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecConfig$ChannelMode;,
        Landroid/bluetooth/BluetoothCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final BITS_PER_SAMPLE_16:I = 0x1

.field public static final BITS_PER_SAMPLE_24:I = 0x2

.field public static final BITS_PER_SAMPLE_32:I = 0x4

.field public static final BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final CHANNEL_MODE_MONO:I = 0x1

.field public static final CHANNEL_MODE_NONE:I = 0x0

.field public static final CHANNEL_MODE_STEREO:I = 0x2

.field public static final CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_RATE_176400:I = 0x10

.field public static final SAMPLE_RATE_192000:I = 0x20

.field public static final SAMPLE_RATE_44100:I = 0x1

.field public static final SAMPLE_RATE_48000:I = 0x2

.field public static final SAMPLE_RATE_88200:I = 0x4

.field public static final SAMPLE_RATE_96000:I = 0x8

.field public static final SAMPLE_RATE_NONE:I = 0x0

.field public static final SOURCE_CODEC_TYPE_AAC:I = 0x1

.field public static final SOURCE_CODEC_TYPE_APTX:I = 0x2

.field public static final SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I = 0x4

.field public static final SOURCE_CODEC_TYPE_APTX_HD:I = 0x3

.field public static final SOURCE_CODEC_TYPE_APTX_TWSP:I = 0x6

.field public static final SOURCE_CODEC_TYPE_CELT:I = 0x8

.field public static final SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final SOURCE_CODEC_TYPE_LDAC:I = 0x5

.field public static final SOURCE_CODEC_TYPE_LHDCV1:I = 0xb

.field public static final SOURCE_CODEC_TYPE_LHDCV2:I = 0x9

.field public static final SOURCE_CODEC_TYPE_LHDCV3:I = 0xa

.field public static final SOURCE_CODEC_TYPE_MAX:I = 0x7

.field public static final SOURCE_CODEC_TYPE_SBC:I


# instance fields
.field private final mBitsPerSample:I

.field private final mChannelMode:I

.field private mCodecPriority:I

.field private final mCodecSpecific1:J

.field private final mCodecSpecific2:J

.field private final mCodecSpecific3:J

.field private final mCodecSpecific4:J

.field private final mCodecType:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-void
.end method

.method public constructor <init>(IIIIIJJJJ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-void
.end method

.method private static appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasSingleBit(I)Z
    .registers 2

    if-eqz p0, :cond_a

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v2, v3, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1

    :cond_48
    return v1
.end method

.method public getBitsPerSample()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public getChannelMode()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const v1, 0xf4240

    if-eq v0, v1, :cond_44

    packed-switch v0, :pswitch_data_48

    packed-switch v0, :pswitch_data_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_26
    const-string v0, "LHDC_V1"

    return-object v0

    :pswitch_29
    const-string v0, "LHDC_V3"

    return-object v0

    :pswitch_2c
    const-string v0, "LHDC_V2"

    return-object v0

    :pswitch_2f
    const-string v0, "aptX TWS+"

    return-object v0

    :pswitch_32
    const-string v0, "LDAC"

    return-object v0

    :pswitch_35
    const-string v0, "aptX Adaptive"

    return-object v0

    :pswitch_38
    const-string v0, "aptX HD"

    return-object v0

    :pswitch_3b
    const-string v0, "aptX"

    return-object v0

    :pswitch_3e
    const-string v0, "AAC"

    return-object v0

    :pswitch_41
    const-string v0, "SBC"

    return-object v0

    :cond_44
    const-string v0, "INVALID CODEC"

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x9
        :pswitch_2c
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method public getCodecPriority()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public getCodecSpecific1()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public getCodecSpecific2()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public getCodecSpecific3()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public getCodecSpecific4()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public getCodecType()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public hasSingleBitsPerSample()Z
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public hasSingleChannelMode()Z
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public hasSingleSampleRate()Z
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMandatoryCodec()Z
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isValid()Z
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 4

    if-eqz p1, :cond_16

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v0, v1, :cond_16

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v0, v1, :cond_16

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public sameCodecSpecificParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-eq v1, v2, :cond_a

    return v0

    :cond_a
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    packed-switch v1, :pswitch_data_3c

    goto :goto_39

    :cond_16
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    return v0

    :cond_1f
    iget-wide v1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_28

    return v0

    :cond_28
    :pswitch_28
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3b

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_39

    goto :goto_3b

    :cond_39
    :goto_39
    const/4 v0, 0x1

    return v0

    :cond_3b
    :goto_3b
    return v0

    :pswitch_data_3c
    .packed-switch 0x9
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public setCodecPriority(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return-void
.end method

.method public similarCodecFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_5a

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_5a

    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    goto :goto_5a

    :cond_12
    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v3, :cond_1a

    if-nez v2, :cond_1c

    :cond_1a
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    :cond_1c
    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v4, :cond_28

    if-nez v3, :cond_25

    goto :goto_28

    :cond_25
    move/from16 v17, v3

    goto :goto_2c

    :cond_28
    :goto_28
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    move/from16 v17, v3

    :goto_2c
    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v4, :cond_38

    if-nez v3, :cond_35

    goto :goto_38

    :cond_35
    move/from16 v18, v3

    goto :goto_3c

    :cond_38
    :goto_38
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    move/from16 v18, v3

    :goto_3c
    new-instance v15, Landroid/bluetooth/BluetoothCodecConfig;

    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v19, 0x0

    move-object v3, v15

    move v6, v2

    move/from16 v7, v17

    move/from16 v8, v18

    move-object v1, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v16}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v1

    return v1

    :cond_5a
    :goto_5a
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const-string v2, "NONE"

    if-nez v1, :cond_b

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_17

    const-string v1, "44100"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_23

    const-string v1, "48000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_23
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    const-string v1, "88200"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3b

    const-string v1, "96000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_47

    const-string v1, "176400"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_47
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_53

    const-string v1, "192000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_53
    const/4 v1, 0x0

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-nez v4, :cond_5c

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5c
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_67

    const-string v4, "16"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_67
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_73

    const-string v4, "24"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_73
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7f

    const-string v4, "32"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7f
    const/4 v4, 0x0

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-nez v5, :cond_88

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_88
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_93

    const-string v2, "MONO"

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_93
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9f

    const-string v2, "STEREO"

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{codecName:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mCodecType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mCodecPriority:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mSampleRate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0x%x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "),mBitsPerSample:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "),mChannelMode:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "),mCodecSpecific1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",mCodecSpecific2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",mCodecSpecific3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",mCodecSpecific4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
