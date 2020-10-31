.class public final Landroid/media/AudioRecord$MetricsConstants;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricsConstants"
.end annotation


# static fields
.field public static final ATTRIBUTES:Ljava/lang/String; = "android.media.audiorecord.attributes"

.field public static final CHANNELS:Ljava/lang/String; = "android.media.audiorecord.channels"

.field public static final CHANNEL_MASK:Ljava/lang/String; = "android.media.audiorecord.channelMask"

.field public static final DURATION_MS:Ljava/lang/String; = "android.media.audiorecord.durationMs"

.field public static final ENCODING:Ljava/lang/String; = "android.media.audiorecord.encoding"

.field public static final FRAME_COUNT:Ljava/lang/String; = "android.media.audiorecord.frameCount"

.field public static final LATENCY:Ljava/lang/String; = "android.media.audiorecord.latency"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MM_PREFIX:Ljava/lang/String; = "android.media.audiorecord."

.field public static final PORT_ID:Ljava/lang/String; = "android.media.audiorecord.portId"

.field public static final SAMPLERATE:Ljava/lang/String; = "android.media.audiorecord.samplerate"

.field public static final SOURCE:Ljava/lang/String; = "android.media.audiorecord.source"

.field public static final START_COUNT:Ljava/lang/String; = "android.media.audiorecord.startCount"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
