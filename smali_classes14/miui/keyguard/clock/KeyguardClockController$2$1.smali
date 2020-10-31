.class Lmiui/keyguard/clock/KeyguardClockController$2$1;
.super Ljava/lang/Object;
.source "KeyguardClockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/keyguard/clock/KeyguardClockController$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/keyguard/clock/KeyguardClockController$2;


# direct methods
.method constructor <init>(Lmiui/keyguard/clock/KeyguardClockController$2;)V
    .registers 2

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController$2$1;->this$1:Lmiui/keyguard/clock/KeyguardClockController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$2$1;->this$1:Lmiui/keyguard/clock/KeyguardClockController$2;

    iget-object v0, v0, Lmiui/keyguard/clock/KeyguardClockController$2;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    # setter for: Lmiui/keyguard/clock/KeyguardClockController;->mCurrentTimezone:Ljava/lang/String;
    invoke-static {v0, v1}, Lmiui/keyguard/clock/KeyguardClockController;->access$102(Lmiui/keyguard/clock/KeyguardClockController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$2$1;->this$1:Lmiui/keyguard/clock/KeyguardClockController$2;

    iget-object v0, v0, Lmiui/keyguard/clock/KeyguardClockController$2;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # invokes: Lmiui/keyguard/clock/KeyguardClockController;->updateDualClock()V
    invoke-static {v0}, Lmiui/keyguard/clock/KeyguardClockController;->access$200(Lmiui/keyguard/clock/KeyguardClockController;)V

    return-void
.end method
