.class public final synthetic Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;->f$0:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    iput p2, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;->f$0:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    iget v1, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiSwitchClient$2$wYF9AcLTW87bh8nh0L1O42--jdg;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiSwitchClient$2;->lambda$onComplete$0(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V

    return-void
.end method
