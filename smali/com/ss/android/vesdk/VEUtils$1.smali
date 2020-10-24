.class final Lcom/ss/android/vesdk/VEUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;


# instance fields
.field final synthetic val$callback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEUtils$1;->val$callback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$1;->val$callback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;->onProgressChanged(I)V

    :cond_0
    return-void
.end method
