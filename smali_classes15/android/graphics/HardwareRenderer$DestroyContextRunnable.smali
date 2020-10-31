.class final Landroid/graphics/HardwareRenderer$DestroyContextRunnable;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DestroyContextRunnable"
.end annotation


# instance fields
.field private final mNativeInstance:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;->mNativeInstance:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-wide v0, p0, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;->mNativeInstance:J

    # invokes: Landroid/graphics/HardwareRenderer;->nDeleteProxy(J)V
    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->access$300(J)V

    return-void
.end method
