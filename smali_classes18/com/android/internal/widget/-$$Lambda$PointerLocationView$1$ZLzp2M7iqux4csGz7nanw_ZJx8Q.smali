.class public final synthetic Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/PointerLocationView$1;

.field public final synthetic f$1:Landroid/graphics/Region;

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;->f$0:Lcom/android/internal/widget/PointerLocationView$1;

    iput-object p2, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;->f$0:Lcom/android/internal/widget/PointerLocationView$1;

    iget-object v1, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;->f$1:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$ZLzp2M7iqux4csGz7nanw_ZJx8Q;->f$2:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$1;->lambda$onSystemGestureExclusionChanged$0$PointerLocationView$1(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method
