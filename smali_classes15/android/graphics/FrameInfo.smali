.class public final Landroid/graphics/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FrameInfo$FrameInfoFlags;
    }
.end annotation


# static fields
.field private static final ANIMATION_START:I = 0x6

.field private static final DRAW_START:I = 0x8

.field private static final FLAGS:I = 0x0

.field public static final FLAG_SURFACE_CANVAS:J = 0x4L

.field public static final FLAG_WINDOW_LAYOUT_CHANGED:J = 0x1L

.field private static final HANDLE_INPUT_START:I = 0x5

.field private static final INTENDED_VSYNC:I = 0x1

.field private static final NEWEST_INPUT_EVENT:I = 0x4

.field private static final OLDEST_INPUT_EVENT:I = 0x3

.field private static final PERFORM_TRAVERSALS_START:I = 0x7

.field private static final VSYNC:I = 0x2


# instance fields
.field public frameInfo:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    return-void
.end method


# virtual methods
.method public addFlags(J)V
    .registers 7

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    or-long/2addr v2, p1

    aput-wide v2, v0, v1

    return-void
.end method

.method public markAnimationsStart()V
    .registers 5

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x6

    aput-wide v1, v0, v3

    return-void
.end method

.method public markDrawStart()V
    .registers 5

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/16 v3, 0x8

    aput-wide v1, v0, v3

    return-void
.end method

.method public markInputHandlingStart()V
    .registers 5

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    return-void
.end method

.method public markPerformTraversalsStart()V
    .registers 5

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x7

    aput-wide v1, v0, v3

    return-void
.end method

.method public setVsync(JJ)V
    .registers 9

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 v1, 0x2

    aput-wide p3, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public updateInputEventTime(JJ)V
    .registers 9

    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    cmp-long v2, p3, v2

    if-gez v2, :cond_b

    aput-wide p3, v0, v1

    :cond_b
    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x4

    aget-wide v2, v0, v1

    cmp-long v2, p1, v2

    if-lez v2, :cond_16

    aput-wide p1, v0, v1

    :cond_16
    return-void
.end method
