.class Landroid/hardware/hdmi/HdmiTvClient$3;
.super Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiRecordListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneTouchRecordSource(I)[B
    .registers 6

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1

    :cond_b
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    return-object v2
.end method

.method public onClearTimerRecordingResult(II)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onClearTimerRecordingResult(II)V

    return-void
.end method

.method public onOneTouchRecordResult(II)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordResult(II)V

    return-void
.end method

.method public onTimerRecordingResult(II)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordListener;->onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V

    return-void
.end method
