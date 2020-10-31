.class public final synthetic Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$8hITRJtT52FGVzLySKUnda7QvUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$8hITRJtT52FGVzLySKUnda7QvUU;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$8hITRJtT52FGVzLySKUnda7QvUU;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->lambda$send$0(Landroid/view/contentcapture/MainContentCaptureSession;)V

    return-void
.end method
