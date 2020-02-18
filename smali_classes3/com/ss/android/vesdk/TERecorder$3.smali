.class Lcom/ss/android/vesdk/TERecorder$3;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->concatAsync(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$audioOutputPath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

.field final synthetic val$videoOutputPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$videoOutputPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$audioOutputPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$videoOutputPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$audioOutputPath:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker concat failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    invoke-direct {v2, p0, v0}, Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;-><init>(Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$3;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;->onConcatFinished(I)V

    :cond_2
    :goto_0
    return-void
.end method
