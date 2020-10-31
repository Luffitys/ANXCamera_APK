.class Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;
.super Ljava/lang/Object;
.source "MiuiPcDecorCaptionView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MiuiPcDecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    # setter for: Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->access$102(Lcom/android/internal/widget/MiuiPcDecorCaptionView;Landroid/os/IBinder;)Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPcService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->access$100(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiPcDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->access$102(Lcom/android/internal/widget/MiuiPcDecorCaptionView;Landroid/os/IBinder;)Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiPcDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
