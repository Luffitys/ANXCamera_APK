.class public final synthetic Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;->f$1:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    iput p3, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;->f$1:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    iget v2, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$knvX6ZgANoRRFcb_fUHlUdWIjCQ;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/hdmi/HdmiSwitchClient$2;->lambda$onComplete$1(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V

    return-void
.end method
