.class Lmiui/keyguard/clock/KeyguardClockController$5;
.super Landroid/database/ContentObserver;
.source "KeyguardClockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/keyguard/clock/KeyguardClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/keyguard/clock/KeyguardClockController;


# direct methods
.method constructor <init>(Lmiui/keyguard/clock/KeyguardClockController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController$5;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$5;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # getter for: Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/keyguard/clock/KeyguardClockController;->access$600(Lmiui/keyguard/clock/KeyguardClockController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "resident_timezone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezone:Ljava/lang/String;
    invoke-static {v0, v1}, Lmiui/keyguard/clock/KeyguardClockController;->access$702(Lmiui/keyguard/clock/KeyguardClockController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$5;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # invokes: Lmiui/keyguard/clock/KeyguardClockController;->updateDualClock()V
    invoke-static {v0}, Lmiui/keyguard/clock/KeyguardClockController;->access$200(Lmiui/keyguard/clock/KeyguardClockController;)V

    return-void
.end method
