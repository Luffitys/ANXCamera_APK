.class Lcom/android/internal/widget/MiuiDecorCaptionView$3$5;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView$3;->hideCaptionView()V
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

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3$5;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3$5;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # invokes: Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$200(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    return-void
.end method
