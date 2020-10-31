.class Lmiui/slide/SlideCameraMonitor$H;
.super Landroid/os/Handler;
.source "SlideCameraMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCameraMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCameraMonitor;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideCameraMonitor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/slide/SlideCameraMonitor$H;->this$0:Lmiui/slide/SlideCameraMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
