.class Landroid/hardware/hdmi/HdmiSwitchClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiSwitchClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiSwitchClient$1;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient$1;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;->onSelect(I)V

    return-void
.end method
