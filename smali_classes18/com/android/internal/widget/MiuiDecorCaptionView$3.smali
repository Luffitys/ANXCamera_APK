.class Lcom/android/internal/widget/MiuiDecorCaptionView$3;
.super Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;
.source "MiuiDecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->registerMiuiGestureControlHelper()V
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

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCaptionView()V
    .registers 3

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "hideCaptionView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$3$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3$5;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyExitFreeFormApplicationStart()V
    .registers 5

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "notifyExitApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;
    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$400(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # invokes: Lcom/android/internal/widget/MiuiDecorCaptionView;->sendWindowClosedIntent()V
    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$500(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    return-void
.end method

.method public notifyExitSmallFreeFormApplicationStart()V
    .registers 3

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "notifyExitSmallFreeFormApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # invokes: Lcom/android/internal/widget/MiuiDecorCaptionView;->sendWindowClosedIntent()V
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$500(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    return-void
.end method

.method public notifyFreeFormApplicationResizeEnd(J)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/MiuiDecorCaptionView$3$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/widget/MiuiDecorCaptionView$3$3;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFreeFormApplicationResizeStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$3$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFullScreenWidnowModeStart()V
    .registers 3

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "notifyFullScreenWidnowModeStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$3$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showCaptionView()V
    .registers 3

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "showCaptionView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$3$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3$4;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCaptionViewVisibility()V
    .registers 3

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "updateCaptionViewVisibility"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$3$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3$6;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
