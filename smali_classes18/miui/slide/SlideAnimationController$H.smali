.class Lmiui/slide/SlideAnimationController$H;
.super Landroid/os/Handler;
.source "SlideAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideAnimationController;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideAnimationController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/slide/SlideAnimationController;->access$000(Lmiui/slide/SlideAnimationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, -0x1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # invokes: Lmiui/slide/SlideAnimationController;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3, v1}, Lmiui/slide/SlideAnimationController;->access$100(Lmiui/slide/SlideAnimationController;I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_bf

    const/16 v7, 0x11

    if-eq v4, v6, :cond_8c

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_29

    goto/16 :goto_ef

    :cond_29
    # getter for: Lmiui/slide/SlideAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/slide/SlideAnimationController;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "slider tip animation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$300(Lmiui/slide/SlideAnimationController;)Z

    move-result v4

    if-nez v4, :cond_ef

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$500(Lmiui/slide/SlideAnimationController;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v5}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/slide/SlideAnimationView;->startAnimating(I)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # setter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4, v6}, Lmiui/slide/SlideAnimationController;->access$302(Lmiui/slide/SlideAnimationController;Z)Z

    goto/16 :goto_ef

    :cond_5d
    # getter for: Lmiui/slide/SlideAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/slide/SlideAnimationController;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "slider move animation"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$300(Lmiui/slide/SlideAnimationController;)Z

    move-result v4

    if-eqz v4, :cond_ef

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/slide/SlideAnimationView;->stopAnimator()V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$500(Lmiui/slide/SlideAnimationController;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v6, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v6}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # setter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4, v5}, Lmiui/slide/SlideAnimationController;->access$302(Lmiui/slide/SlideAnimationController;Z)Z

    goto :goto_ef

    :cond_8c
    # getter for: Lmiui/slide/SlideAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/slide/SlideAnimationController;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "slider close animation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$300(Lmiui/slide/SlideAnimationController;)Z

    move-result v4

    if-nez v4, :cond_ef

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$500(Lmiui/slide/SlideAnimationController;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v5}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lmiui/slide/SlideAnimationView;->startAnimating(I)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # setter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4, v6}, Lmiui/slide/SlideAnimationController;->access$302(Lmiui/slide/SlideAnimationController;Z)Z

    goto :goto_ef

    :cond_bf
    # getter for: Lmiui/slide/SlideAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/slide/SlideAnimationController;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v7, "slider open animation"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$300(Lmiui/slide/SlideAnimationController;)Z

    move-result v4

    if-nez v4, :cond_ef

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$500(Lmiui/slide/SlideAnimationController;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v7, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v7}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v7

    invoke-interface {v4, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # getter for: Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;
    invoke-static {v4}, Lmiui/slide/SlideAnimationController;->access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lmiui/slide/SlideAnimationView;->startAnimating(I)V

    iget-object v4, p0, Lmiui/slide/SlideAnimationController$H;->this$0:Lmiui/slide/SlideAnimationController;

    # setter for: Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z
    invoke-static {v4, v6}, Lmiui/slide/SlideAnimationController;->access$302(Lmiui/slide/SlideAnimationController;Z)Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ef} :catch_f0

    :cond_ef
    :goto_ef
    goto :goto_f4

    :catch_f0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f4
    return-void
.end method
