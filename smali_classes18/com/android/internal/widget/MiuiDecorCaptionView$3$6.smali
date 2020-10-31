.class Lcom/android/internal/widget/MiuiDecorCaptionView$3$6;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView$3;->updateCaptionViewVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$3;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3$6;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3$6;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$700(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V

    return-void
.end method
