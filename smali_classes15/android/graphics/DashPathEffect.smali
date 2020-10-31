.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor <init>([FF)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_e

    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/DashPathEffect;->native_instance:J

    return-void

    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native nativeCreate([FF)J
.end method
