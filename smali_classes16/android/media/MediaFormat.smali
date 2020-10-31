.class public final Landroid/media/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;,
        Landroid/media/MediaFormat$UnprefixedKeySet;,
        Landroid/media/MediaFormat$FilteredMappedKeySet;,
        Landroid/media/MediaFormat$Type;,
        Landroid/media/MediaFormat$ColorRange;,
        Landroid/media/MediaFormat$ColorTransfer;,
        Landroid/media/MediaFormat$ColorStandard;
    }
.end annotation


# static fields
.field public static final COLOR_RANGE_FULL:I = 0x1

.field public static final COLOR_RANGE_LIMITED:I = 0x2

.field public static final COLOR_STANDARD_BT2020:I = 0x6

.field public static final COLOR_STANDARD_BT601_NTSC:I = 0x4

.field public static final COLOR_STANDARD_BT601_PAL:I = 0x2

.field public static final COLOR_STANDARD_BT709:I = 0x1

.field public static final COLOR_TRANSFER_HLG:I = 0x7

.field public static final COLOR_TRANSFER_LINEAR:I = 0x1

.field public static final COLOR_TRANSFER_SDR_VIDEO:I = 0x3

.field public static final COLOR_TRANSFER_ST2084:I = 0x6

.field public static final KEY_AAC_DRC_ALBUM_MODE:Ljava/lang/String; = "aac-drc-album-mode"

.field public static final KEY_AAC_DRC_ATTENUATION_FACTOR:Ljava/lang/String; = "aac-drc-cut-level"

.field public static final KEY_AAC_DRC_BOOST_FACTOR:Ljava/lang/String; = "aac-drc-boost-level"

.field public static final KEY_AAC_DRC_EFFECT_TYPE:Ljava/lang/String; = "aac-drc-effect-type"

.field public static final KEY_AAC_DRC_HEAVY_COMPRESSION:Ljava/lang/String; = "aac-drc-heavy-compression"

.field public static final KEY_AAC_DRC_OUTPUT_LOUDNESS:Ljava/lang/String; = "aac-drc-output-loudness"

.field public static final KEY_AAC_DRC_TARGET_REFERENCE_LEVEL:Ljava/lang/String; = "aac-target-ref-level"

.field public static final KEY_AAC_ENCODED_TARGET_LEVEL:Ljava/lang/String; = "aac-encoded-target-level"

.field public static final KEY_AAC_MAX_OUTPUT_CHANNEL_COUNT:Ljava/lang/String; = "aac-max-output-channel_count"

.field public static final KEY_AAC_PROFILE:Ljava/lang/String; = "aac-profile"

.field public static final KEY_AAC_SBR_MODE:Ljava/lang/String; = "aac-sbr-mode"

.field public static final KEY_AUDIO_SESSION_ID:Ljava/lang/String; = "audio-session-id"

.field public static final KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field public static final KEY_BIT_RATE:Ljava/lang/String; = "bitrate"

.field public static final KEY_CAPTION_SERVICE_NUMBER:Ljava/lang/String; = "caption-service-number"

.field public static final KEY_CAPTURE_RATE:Ljava/lang/String; = "capture-rate"

.field public static final KEY_CA_PRIVATE_DATA:Ljava/lang/String; = "ca-private-data"

.field public static final KEY_CA_SESSION_ID:Ljava/lang/String; = "ca-session-id"

.field public static final KEY_CA_SYSTEM_ID:Ljava/lang/String; = "ca-system-id"

.field public static final KEY_CHANNEL_COUNT:Ljava/lang/String; = "channel-count"

.field public static final KEY_CHANNEL_MASK:Ljava/lang/String; = "channel-mask"

.field public static final KEY_CODECS_STRING:Ljava/lang/String; = "codecs-string"

.field public static final KEY_COLOR_FORMAT:Ljava/lang/String; = "color-format"

.field public static final KEY_COLOR_RANGE:Ljava/lang/String; = "color-range"

.field public static final KEY_COLOR_STANDARD:Ljava/lang/String; = "color-standard"

.field public static final KEY_COLOR_TRANSFER:Ljava/lang/String; = "color-transfer"

.field public static final KEY_COMPLEXITY:Ljava/lang/String; = "complexity"

.field public static final KEY_CREATE_INPUT_SURFACE_SUSPENDED:Ljava/lang/String; = "create-input-buffers-suspended"

.field public static final KEY_DURATION:Ljava/lang/String; = "durationUs"

.field public static final KEY_ENCODER_DELAY:Ljava/lang/String; = "encoder-delay"

.field public static final KEY_ENCODER_PADDING:Ljava/lang/String; = "encoder-padding"

.field public static final KEY_FEATURE_:Ljava/lang/String; = "feature-"

.field public static final KEY_FLAC_COMPRESSION_LEVEL:Ljava/lang/String; = "flac-compression-level"

.field public static final KEY_FRAME_RATE:Ljava/lang/String; = "frame-rate"

.field public static final KEY_GRID_COLUMNS:Ljava/lang/String; = "grid-cols"

.field public static final KEY_GRID_ROWS:Ljava/lang/String; = "grid-rows"

.field public static final KEY_HAPTIC_CHANNEL_COUNT:Ljava/lang/String; = "haptic-channel-count"

.field public static final KEY_HARDWARE_AV_SYNC_ID:Ljava/lang/String; = "hw-av-sync-id"

.field public static final KEY_HDR10_PLUS_INFO:Ljava/lang/String; = "hdr10-plus-info"

.field public static final KEY_HDR_STATIC_INFO:Ljava/lang/String; = "hdr-static-info"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_INTRA_REFRESH_PERIOD:Ljava/lang/String; = "intra-refresh-period"

.field public static final KEY_IS_ADTS:Ljava/lang/String; = "is-adts"

.field public static final KEY_IS_AUTOSELECT:Ljava/lang/String; = "is-autoselect"

.field public static final KEY_IS_DEFAULT:Ljava/lang/String; = "is-default"

.field public static final KEY_IS_FORCED_SUBTITLE:Ljava/lang/String; = "is-forced-subtitle"

.field public static final KEY_IS_TIMED_TEXT:Ljava/lang/String; = "is-timed-text"

.field public static final KEY_I_FRAME_INTERVAL:Ljava/lang/String; = "i-frame-interval"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_LATENCY:Ljava/lang/String; = "latency"

.field public static final KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_LOW_LATENCY:Ljava/lang/String; = "low-latency"

.field public static final KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final KEY_MAX_B_FRAMES:Ljava/lang/String; = "max-bframes"

.field public static final KEY_MAX_FPS_TO_ENCODER:Ljava/lang/String; = "max-fps-to-encoder"

.field public static final KEY_MAX_HEIGHT:Ljava/lang/String; = "max-height"

.field public static final KEY_MAX_INPUT_SIZE:Ljava/lang/String; = "max-input-size"

.field public static final KEY_MAX_PTS_GAP_TO_ENCODER:Ljava/lang/String; = "max-pts-gap-to-encoder"

.field public static final KEY_MAX_WIDTH:Ljava/lang/String; = "max-width"

.field public static final KEY_MIME:Ljava/lang/String; = "mime"

.field public static final KEY_OPERATING_RATE:Ljava/lang/String; = "operating-rate"

.field public static final KEY_OUTPUT_REORDER_DEPTH:Ljava/lang/String; = "output-reorder-depth"

.field public static final KEY_PCM_ENCODING:Ljava/lang/String; = "pcm-encoding"

.field public static final KEY_PIXEL_ASPECT_RATIO_HEIGHT:Ljava/lang/String; = "sar-height"

.field public static final KEY_PIXEL_ASPECT_RATIO_WIDTH:Ljava/lang/String; = "sar-width"

.field public static final KEY_PREPEND_HEADER_TO_SYNC_FRAMES:Ljava/lang/String; = "prepend-sps-pps-to-idr-frames"

.field public static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final KEY_PUSH_BLANK_BUFFERS_ON_STOP:Ljava/lang/String; = "push-blank-buffers-on-shutdown"

.field public static final KEY_QUALITY:Ljava/lang/String; = "quality"

.field public static final KEY_REPEAT_PREVIOUS_FRAME_AFTER:Ljava/lang/String; = "repeat-previous-frame-after"

.field public static final KEY_ROTATION:Ljava/lang/String; = "rotation-degrees"

.field public static final KEY_SAMPLE_RATE:Ljava/lang/String; = "sample-rate"

.field public static final KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field public static final KEY_STRIDE:Ljava/lang/String; = "stride"

.field public static final KEY_TEMPORAL_LAYERING:Ljava/lang/String; = "ts-schema"

.field public static final KEY_TILE_HEIGHT:Ljava/lang/String; = "tile-height"

.field public static final KEY_TILE_WIDTH:Ljava/lang/String; = "tile-width"

.field public static final KEY_TRACK_ID:Ljava/lang/String; = "track-id"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final MIMETYPE_AUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final MIMETYPE_AUDIO_AC4:Ljava/lang/String; = "audio/ac4"

.field public static final MIMETYPE_AUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static final MIMETYPE_AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final MIMETYPE_AUDIO_EAC3:Ljava/lang/String; = "audio/eac3"

.field public static final MIMETYPE_AUDIO_EAC3_JOC:Ljava/lang/String; = "audio/eac3-joc"

.field public static final MIMETYPE_AUDIO_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final MIMETYPE_AUDIO_G711_ALAW:Ljava/lang/String; = "audio/g711-alaw"

.field public static final MIMETYPE_AUDIO_G711_MLAW:Ljava/lang/String; = "audio/g711-mlaw"

.field public static final MIMETYPE_AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final MIMETYPE_AUDIO_MSGSM:Ljava/lang/String; = "audio/gsm"

.field public static final MIMETYPE_AUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final MIMETYPE_AUDIO_QCELP:Ljava/lang/String; = "audio/qcelp"

.field public static final MIMETYPE_AUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final MIMETYPE_AUDIO_SCRAMBLED:Ljava/lang/String; = "audio/scrambled"

.field public static final MIMETYPE_AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final MIMETYPE_IMAGE_ANDROID_HEIC:Ljava/lang/String; = "image/vnd.android.heic"

.field public static final MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final MIMETYPE_VIDEO_AV1:Ljava/lang/String; = "video/av01"

.field public static final MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final MIMETYPE_VIDEO_DOLBY_VISION:Ljava/lang/String; = "video/dolby-vision"

.field public static final MIMETYPE_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final MIMETYPE_VIDEO_HEVC:Ljava/lang/String; = "video/hevc"

.field public static final MIMETYPE_VIDEO_MPEG2:Ljava/lang/String; = "video/mpeg2"

.field public static final MIMETYPE_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field public static final MIMETYPE_VIDEO_RAW:Ljava/lang/String; = "video/raw"

.field public static final MIMETYPE_VIDEO_SCRAMBLED:Ljava/lang/String; = "video/scrambled"

.field public static final MIMETYPE_VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final MIMETYPE_VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final TYPE_BYTE_BUFFER:I = 0x5

.field public static final TYPE_FLOAT:I = 0x3

.field public static final TYPE_INTEGER:I = 0x1

.field public static final TYPE_LONG:I = 0x2

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_STRING:I = 0x4


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .registers 4

    invoke-direct {p0}, Landroid/media/MediaFormat;-><init>()V

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaFormat;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .registers 5

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;
    .registers 4

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .registers 5

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final containsFeature(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public getFeatureEnabled(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "feature is not specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getFeatures()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;

    const-string v1, "feature-"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;-><init>(Landroid/media/MediaFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFloat(Ljava/lang/String;)F
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_11

    :cond_10
    move v1, p2

    :goto_11
    return v1
.end method

.method public final getInteger(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getInteger(Ljava/lang/String;I)I
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    return p2
.end method

.method public final getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaFormat$UnprefixedKeySet;

    const-string v1, "feature-"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaFormat$UnprefixedKeySet;-><init>(Landroid/media/MediaFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLong(Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    :catch_5
    move-exception v0

    return-wide p2
.end method

.method getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public final getValueTypeForKey(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    return v1

    :cond_16
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1c

    const/4 v1, 0x3

    return v1

    :cond_1c
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_22

    const/4 v1, 0x4

    return v1

    :cond_22
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_28

    const/4 v1, 0x5

    return v1

    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid value for key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final removeFeature(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "feature-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public final setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFeatureEnabled(Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public final setFloat(Ljava/lang/String;F)V
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setInteger(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLong(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
