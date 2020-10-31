.class Landroid/widget/AbsListView$OverFlingRunnable;
.super Landroid/widget/AbsListView$FlingRunnable;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverFlingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/AbsListView$OverFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    const-string/jumbo v0, "startOverfling: replacing default configuration."

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/DynamicOverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/DynamicOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$OverFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsListView$OverFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0, p0}, Landroid/widget/AbsListViewInjector;->doAnimationFrame(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OverFlingRunnable;)V

    return-void
.end method

.method startOverfling(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsListView$OverFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0, p0, p1}, Landroid/widget/AbsListViewInjector;->startOverfling(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OverFlingRunnable;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$OverFlingRunnable;->mSuppressIdleStateChangeCall:Z

    return-void
.end method

.method superDoAnimationFrame()V
    .registers 1

    invoke-super {p0}, Landroid/widget/AbsListView$FlingRunnable;->run()V

    return-void
.end method
