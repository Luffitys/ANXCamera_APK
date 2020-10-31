.class public final Landroid/text/AutoGrowArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AutoGrowArray$FloatArray;,
        Landroid/text/AutoGrowArray$IntArray;,
        Landroid/text/AutoGrowArray$ByteArray;
    }
.end annotation


# static fields
.field private static final MAX_CAPACITY_TO_BE_KEPT:I = 0x2710

.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .registers 3

    invoke-static {p0, p1}, Landroid/text/AutoGrowArray;->computeNewCapacity(II)I

    move-result v0

    return v0
.end method

.method private static computeNewCapacity(II)I
    .registers 4

    const/4 v0, 0x6

    if-ge p0, v0, :cond_6

    const/16 v0, 0xc

    goto :goto_8

    :cond_6
    shr-int/lit8 v0, p0, 0x1

    :goto_8
    add-int/2addr v0, p0

    if-le v0, p1, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method
