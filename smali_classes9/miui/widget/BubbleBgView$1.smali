.class Lmiui/widget/BubbleBgView$1;
.super Landroid/os/Handler;
.source ""


# static fields
.field private static final FLUSH_RATE:I = 0x64


# instance fields
.field final synthetic this$0:Lmiui/widget/BubbleBgView;


# direct methods
.method constructor <init>(Lmiui/widget/BubbleBgView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/BubbleBgView$1;->this$0:Lmiui/widget/BubbleBgView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/widget/BubbleBgView$1;->this$0:Lmiui/widget/BubbleBgView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lmiui/widget/BubbleBgView$1;->this$0:Lmiui/widget/BubbleBgView;

    invoke-static {p0}, Lmiui/widget/BubbleBgView;->access$000(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
