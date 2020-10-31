.class Lmiui/widget/BubbleBgView$1;
.super Landroid/os/Handler;
.source "BubbleBgView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/BubbleBgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLUSH_RATE:I = 0x64


# instance fields
.field final synthetic this$0:Lmiui/widget/BubbleBgView;


# direct methods
.method constructor <init>(Lmiui/widget/BubbleBgView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/BubbleBgView$1;->this$0:Lmiui/widget/BubbleBgView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_16

    :cond_6
    iget-object v0, p0, Lmiui/widget/BubbleBgView$1;->this$0:Lmiui/widget/BubbleBgView;

    invoke-virtual {v0}, Lmiui/widget/BubbleBgView;->invalidate()V

    iget-object v0, p0, Lmiui/widget/BubbleBgView$1;->this$0:Lmiui/widget/BubbleBgView;

    # getter for: Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/widget/BubbleBgView;->access$000(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_16
    return-void
.end method
