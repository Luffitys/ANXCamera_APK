.class Lcom/ss/android/vesdk/TERecorder$6;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Lcom/ss/android/medialib/listener/SlamDetectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlam(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1100(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
