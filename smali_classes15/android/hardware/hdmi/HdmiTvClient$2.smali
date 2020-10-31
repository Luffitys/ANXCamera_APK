.class Landroid/hardware/hdmi/HdmiTvClient$2;
.super Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$2;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$2;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method
