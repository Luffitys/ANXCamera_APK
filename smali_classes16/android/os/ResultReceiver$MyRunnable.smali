.class Landroid/os/ResultReceiver$MyRunnable;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunnable"
.end annotation


# instance fields
.field final mResultCode:I

.field final mResultData:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroid/os/ResultReceiver$MyRunnable;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultCode:I

    iput-object p3, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/os/ResultReceiver$MyRunnable;->this$0:Landroid/os/ResultReceiver;

    iget v1, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultCode:I

    iget-object v2, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method
