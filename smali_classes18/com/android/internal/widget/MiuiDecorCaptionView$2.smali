.class Lcom/android/internal/widget/MiuiDecorCaptionView$2;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$100(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V

    return-void
.end method
