.class public Landroid/graphics/PathEffect;
.super Ljava/lang/Object;
.source "PathEffect.java"


# instance fields
.field native_instance:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/graphics/PathEffect;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathEffect;->nativeDestructor(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathEffect;->native_instance:J

    return-void
.end method
