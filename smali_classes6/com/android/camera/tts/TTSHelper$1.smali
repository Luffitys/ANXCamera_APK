.class Lcom/android/camera/tts/TTSHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/tts/TTSHelper;


# direct methods
.method constructor <init>(Lcom/android/camera/tts/TTSHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$1;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$1;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v0}, Lcom/android/camera/tts/TTSHelper;->access$000(Lcom/android/camera/tts/TTSHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$1;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v0}, Lcom/android/camera/tts/TTSHelper;->access$100(Lcom/android/camera/tts/TTSHelper;)Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$1;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v0}, Lcom/android/camera/tts/TTSHelper;->access$400(Lcom/android/camera/tts/TTSHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper$1;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v1}, Lcom/android/camera/tts/TTSHelper;->access$300(Lcom/android/camera/tts/TTSHelper;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper$1;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {p0}, Lcom/android/camera/tts/TTSHelper;->access$200(Lcom/android/camera/tts/TTSHelper;)V

    :goto_1
    return-void
.end method
