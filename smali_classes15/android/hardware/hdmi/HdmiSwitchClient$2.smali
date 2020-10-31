.class Landroid/hardware/hdmi/HdmiSwitchClient$2;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiSwitchClient;->selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/hdmi/HdmiSwitchClient;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiSwitchClient;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->this$0:Landroid/hardware/hdmi/HdmiSwitchClient;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onComplete$0(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;->onSelect(I)V

    return-void
.end method

.method static synthetic lambda$onComplete$1(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    new-instance v2, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;

    invoke-direct {v2, v0, v1, p1}, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
