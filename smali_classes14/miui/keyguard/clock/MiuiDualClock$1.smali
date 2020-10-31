.class Lmiui/keyguard/clock/MiuiDualClock$1;
.super Landroid/database/ContentObserver;
.source "MiuiDualClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/keyguard/clock/MiuiDualClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/keyguard/clock/MiuiDualClock;


# direct methods
.method constructor <init>(Lmiui/keyguard/clock/MiuiDualClock;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock$1;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$1;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # getter for: Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$100(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_17

    const/4 v3, 0x1

    :cond_17
    # setter for: Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZone:Z
    invoke-static {v0, v3}, Lmiui/keyguard/clock/MiuiDualClock;->access$002(Lmiui/keyguard/clock/MiuiDualClock;Z)Z

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$1;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # invokes: Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V
    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$200(Lmiui/keyguard/clock/MiuiDualClock;)V

    return-void
.end method
