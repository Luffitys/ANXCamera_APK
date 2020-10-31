.class Lmiui/keyguard/clock/KeyguardClockController$3;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lmiui/keyguard/clock/KeyguardClockController;)V
    .registers 2

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController$3;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$3;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # getter for: Lmiui/keyguard/clock/KeyguardClockController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/keyguard/clock/KeyguardClockController;->access$300(Lmiui/keyguard/clock/KeyguardClockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController$3;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # getter for: Lmiui/keyguard/clock/KeyguardClockController;->mUpdateTimeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/keyguard/clock/KeyguardClockController;->access$400(Lmiui/keyguard/clock/KeyguardClockController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
