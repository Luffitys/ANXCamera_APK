.class Landroid/media/MiniThumbFileInjector;
.super Ljava/lang/Object;
.source "MiniThumbFileInjector.java"


# static fields
.field private static final MAX_MINI_THUMB_COUNT:I = 0x1388


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPosition(J)J
    .registers 6

    const-wide/16 v0, 0x1388

    rem-long v0, p0, v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static isMatch(Ljava/nio/ByteBuffer;J)Z
    .registers 7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method
