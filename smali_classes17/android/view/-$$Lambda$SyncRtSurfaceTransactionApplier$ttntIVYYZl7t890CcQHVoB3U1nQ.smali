.class public final synthetic Landroid/view/-$$Lambda$SyncRtSurfaceTransactionApplier$ttntIVYYZl7t890CcQHVoB3U1nQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final synthetic f$1:[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SyncRtSurfaceTransactionApplier;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SyncRtSurfaceTransactionApplier$ttntIVYYZl7t890CcQHVoB3U1nQ;->f$0:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p2, p0, Landroid/view/-$$Lambda$SyncRtSurfaceTransactionApplier$ttntIVYYZl7t890CcQHVoB3U1nQ;->f$1:[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 5

    iget-object v0, p0, Landroid/view/-$$Lambda$SyncRtSurfaceTransactionApplier$ttntIVYYZl7t890CcQHVoB3U1nQ;->f$0:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/-$$Lambda$SyncRtSurfaceTransactionApplier$ttntIVYYZl7t890CcQHVoB3U1nQ;->f$1:[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->lambda$scheduleApply$0$SyncRtSurfaceTransactionApplier([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;J)V

    return-void
.end method
