.class Lcom/android/camera/tts/TTSHelper$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/tts/TTSHelper;


# direct methods
.method constructor <init>(Lcom/android/camera/tts/TTSHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$2;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method

.method static synthetic OooO00o(Lcom/android/camera/tts/TTSHelper$BatchListener;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->onStart()V

    return-void
.end method

.method private synthetic OooO0O0(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 2

    invoke-static {p1}, Lcom/android/camera/tts/TTSHelper;->access$600(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper$2;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {p0}, Lcom/android/camera/tts/TTSHelper;->access$000(Lcom/android/camera/tts/TTSHelper;)Ljava/util/Map;

    move-result-object p0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/tts/TTSHelper$BatchListener;

    if-eqz p0, :cond_0

    invoke-interface {p2, p0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/tts/TTSHelper;->access$500()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Missing batch listener: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private safeInvokeAsync(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$2;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v0}, Lcom/android/camera/tts/TTSHelper;->access$400(Lcom/android/camera/tts/TTSHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/tts/OooO0Oo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/tts/OooO0Oo;-><init>(Lcom/android/camera/tts/TTSHelper$2;Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO0OO(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/tts/TTSHelper$2;->OooO0O0(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/tts/TTSHelper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS onDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/camera/tts/OooO0O0;->OooO00o:Lcom/android/camera/tts/OooO0O0;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$2;->safeInvokeAsync(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/tts/TTSHelper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/camera/tts/OooO0oo;->OooO00o:Lcom/android/camera/tts/OooO0oo;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$2;->safeInvokeAsync(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/tts/TTSHelper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS onStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/camera/tts/OooO0OO;->OooO00o:Lcom/android/camera/tts/OooO0OO;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$2;->safeInvokeAsync(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/tts/TTSHelper;->access$500()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TTS onStop: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TTSHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/android/camera/tts/OooO00o;->OooO00o:Lcom/android/camera/tts/OooO00o;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/tts/TTSHelper$2;->safeInvokeAsync(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method
