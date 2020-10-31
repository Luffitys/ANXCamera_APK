.class Lmiui/widget/PictureClock$1;
.super Landroid/content/BroadcastReceiver;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/PictureClock;


# direct methods
.method constructor <init>(Lmiui/widget/PictureClock;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    # getter for: Lmiui/widget/PictureClock;->mLive:Z
    invoke-static {v0}, Lmiui/widget/PictureClock;->access$000(Lmiui/widget/PictureClock;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    new-instance v2, Lmiui/date/Calendar;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    # setter for: Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v1, v2}, Lmiui/widget/PictureClock;->access$102(Lmiui/widget/PictureClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;

    :cond_28
    iget-object v0, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    # getter for: Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/widget/PictureClock;->access$300(Lmiui/widget/PictureClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/widget/PictureClock$1$1;

    invoke-direct {v1, p0}, Lmiui/widget/PictureClock$1$1;-><init>(Lmiui/widget/PictureClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
