.class Lmiui/widget/SpectrumVisualizer$1;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lmiui/widget/SpectrumVisualizer;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/SpectrumVisualizer$1;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$1;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, p2}, Lmiui/widget/SpectrumVisualizer;->update([B)V

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4

    return-void
.end method
