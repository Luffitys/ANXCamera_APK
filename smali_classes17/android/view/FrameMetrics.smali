.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameMetrics$Index;,
        Landroid/view/FrameMetrics$Metric;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x2

.field public static final COMMAND_ISSUE_DURATION:I = 0x6

.field public static final DRAW_DURATION:I = 0x4

.field private static final DURATIONS:[I

.field public static final FIRST_DRAW_FRAME:I = 0x9

.field private static final FRAME_INFO_FLAG_FIRST_DRAW:I = 0x1

.field public static final INPUT_HANDLING_DURATION:I = 0x1

.field public static final INTENDED_VSYNC_TIMESTAMP:I = 0xa

.field public static final LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final SWAP_BUFFERS_DURATION:I = 0x7

.field public static final SYNC_DURATION:I = 0x5

.field public static final TOTAL_DURATION:I = 0x8

.field public static final UNKNOWN_DELAY_DURATION:I = 0x0

.field public static final VSYNC_TIMESTAMP:I = 0xb


# instance fields
.field final mTimingData:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0xa
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0x1
        0xe
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    return-void
.end method

.method public constructor <init>(Landroid/view/FrameMetrics;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v1, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .registers 8

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_3f

    const/16 v2, 0xb

    if-le p1, v2, :cond_9

    goto :goto_3f

    :cond_9
    iget-object v3, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    if-nez v3, :cond_e

    return-wide v0

    :cond_e
    const/16 v0, 0x9

    if-ne p1, v0, :cond_21

    const/4 v0, 0x0

    aget-wide v0, v3, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move-wide v2, v4

    :goto_20
    return-wide v2

    :cond_21
    const/16 v0, 0xa

    if-ne p1, v0, :cond_29

    const/4 v0, 0x1

    aget-wide v0, v3, v0

    return-wide v0

    :cond_29
    if-ne p1, v2, :cond_2f

    const/4 v0, 0x2

    aget-wide v0, v3, v0

    return-wide v0

    :cond_2f
    mul-int/lit8 v0, p1, 0x2

    sget-object v1, Landroid/view/FrameMetrics;->DURATIONS:[I

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    aget-wide v4, v3, v2

    aget v1, v1, v0

    aget-wide v1, v3, v1

    sub-long/2addr v4, v1

    return-wide v4

    :cond_3f
    :goto_3f
    return-wide v0
.end method
