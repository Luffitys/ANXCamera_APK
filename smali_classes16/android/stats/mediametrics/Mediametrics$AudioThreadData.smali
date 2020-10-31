.class public final Landroid/stats/mediametrics/Mediametrics$AudioThreadData;
.super Ljava/lang/Object;
.source "Mediametrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics/Mediametrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioThreadData"
.end annotation


# static fields
.field public static final ACTIVE_MILLIS:J = 0x10300000009L

.field public static final CHANNEL_MASK:J = 0x1030000000eL

.field public static final DURATION_MILLIS:J = 0x1030000000aL

.field public static final ENCODING:J = 0x1090000000fL

.field public static final FRAMECOUNT:J = 0x10500000002L

.field public static final FRAME_COUNT:J = 0x10500000010L

.field public static final ID:J = 0x1050000000bL

.field public static final INPUT_DEVICE:J = 0x10900000012L

.field public static final IO_JITTER_MEAN_MILLIS:J = 0x10100000013L

.field public static final IO_JITTER_STDDEV_MILLIS:J = 0x10100000014L

.field public static final LATENCY_MEAN_MILLIS:J = 0x10100000019L

.field public static final LATENCY_MILLIS_HIST:J = 0x10900000005L

.field public static final LATENCY_STDDEV_MILLIS:J = 0x1010000001aL

.field public static final OUTPUT_DEVICE:J = 0x10900000011L

.field public static final OVERRUNS:J = 0x10300000008L

.field public static final PORT_ID:J = 0x1050000000cL

.field public static final PROCESS_TIME_MEAN_MILLIS:J = 0x10100000015L

.field public static final PROCESS_TIME_STDDEV_MILLIS:J = 0x10100000016L

.field public static final SAMPLERATE:J = 0x10500000003L

.field public static final SAMPLE_RATE:J = 0x1050000000dL

.field public static final TIMESTAMP_JITTER_MEAN_MILLIS:J = 0x10100000017L

.field public static final TIMESTAMP_JITTER_STDDEV_MILLIS:J = 0x10100000018L

.field public static final TYPE:J = 0x10900000001L

.field public static final UNDERRUNS:J = 0x10300000007L

.field public static final WARMUP_MILLIS_HIST:J = 0x10900000006L

.field public static final WORK_MILLIS_HIST:J = 0x10900000004L


# instance fields
.field final synthetic this$0:Landroid/stats/mediametrics/Mediametrics;


# direct methods
.method public constructor <init>(Landroid/stats/mediametrics/Mediametrics;)V
    .registers 2

    iput-object p1, p0, Landroid/stats/mediametrics/Mediametrics$AudioThreadData;->this$0:Landroid/stats/mediametrics/Mediametrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
