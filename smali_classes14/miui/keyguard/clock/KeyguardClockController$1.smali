.class Lmiui/keyguard/clock/KeyguardClockController$1;
.super Ljava/lang/Object;
.source "KeyguardClockController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController$1;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$1;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # getter for: Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;
    invoke-static {v0}, Lmiui/keyguard/clock/KeyguardClockController;->access$000(Lmiui/keyguard/clock/KeyguardClockController;)Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController$1;->this$0:Lmiui/keyguard/clock/KeyguardClockController;

    # getter for: Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;
    invoke-static {v0}, Lmiui/keyguard/clock/KeyguardClockController;->access$000(Lmiui/keyguard/clock/KeyguardClockController;)Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    move-result-object v0

    invoke-interface {v0}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->updateTime()V

    :cond_11
    return-void
.end method
