.class Lmiui/view/RingerModeLayout$5;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;
    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$1400(Lmiui/view/RingerModeLayout;)Lmiui/widget/SeekBar;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x19

    invoke-virtual {v1, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    mul-int/lit8 v2, v0, 0x19

    # invokes: Lmiui/view/RingerModeLayout;->progressToMinute(I)I
    invoke-static {v1, v2}, Lmiui/view/RingerModeLayout;->access$1200(Lmiui/view/RingerModeLayout;I)I

    move-result v1

    iget-object v2, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;
    invoke-static {v3}, Lmiui/view/RingerModeLayout;->access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/app/ExtraNotificationManager;->startCountDownSilenceMode(Landroid/content/Context;II)V

    if-lez v0, :cond_47

    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;
    invoke-static {v3}, Lmiui/view/RingerModeLayout;->access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v3

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_47
    return-void
.end method
