.class Lcom/android/camera/ui/VideoTagView$1;
.super Landroid/os/Handler;
.source "VideoTagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/VideoTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/VideoTagView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/VideoTagView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-static {p0}, Lcom/android/camera/ui/VideoTagView;->access$300(Lcom/android/camera/ui/VideoTagView;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/VideoTagView;->access$002(Lcom/android/camera/ui/VideoTagView;Z)Z

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-static {p1}, Lcom/android/camera/ui/VideoTagView;->access$100(Lcom/android/camera/ui/VideoTagView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-static {p0}, Lcom/android/camera/ui/VideoTagView;->access$200(Lcom/android/camera/ui/VideoTagView;)V

    :goto_0
    return-void
.end method
