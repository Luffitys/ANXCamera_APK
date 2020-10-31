.class public final synthetic Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/Magnifier$InternalPopupWindow;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$0:Landroid/widget/Magnifier$InternalPopupWindow;

    iput-boolean p2, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$1:Z

    iput p3, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$2:I

    iput p4, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$3:I

    iput-boolean p5, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 10

    iget-object v0, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$0:Landroid/widget/Magnifier$InternalPopupWindow;

    iget-boolean v1, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$1:Z

    iget v2, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$2:I

    iget v3, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$3:I

    iget-boolean v4, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;->f$4:Z

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Magnifier$InternalPopupWindow;->lambda$doDraw$0$Magnifier$InternalPopupWindow(ZIIZJ)V

    return-void
.end method
