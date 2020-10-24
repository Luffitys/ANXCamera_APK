.class Lcom/android/camera/tts/TTSHelper$BatchListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mBatchStarted:Z

.field private final mListener:Lcom/android/camera/tts/TTSHelper$Listener;

.field final synthetic this$0:Lcom/android/camera/tts/TTSHelper;


# direct methods
.method constructor <init>(Lcom/android/camera/tts/TTSHelper;Lcom/android/camera/tts/TTSHelper$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mBatchStarted:Z

    iput-object p2, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    return-void
.end method

.method private handleBatchFinished(Landroid/util/Pair;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    invoke-static {v0, v1, p2}, Lcom/android/camera/tts/TTSHelper;->access$900(Lcom/android/camera/tts/TTSHelper;Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {p0}, Lcom/android/camera/tts/TTSHelper;->access$000(Lcom/android/camera/tts/TTSHelper;)Ljava/util/Map;

    move-result-object p0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method onDone(Landroid/util/Pair;)V
    .locals 1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->handleBatchFinished(Landroid/util/Pair;Z)V

    :cond_0
    return-void
.end method

.method onError(Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v1}, Lcom/android/camera/tts/TTSHelper;->access$700(Lcom/android/camera/tts/TTSHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v0}, Lcom/android/camera/tts/TTSHelper;->access$800(Lcom/android/camera/tts/TTSHelper;)Lcom/android/camera/tts/TTSEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->stop()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->handleBatchFinished(Landroid/util/Pair;Z)V

    return-void
.end method

.method onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mBatchStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mBatchStarted:Z

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    invoke-interface {p0}, Lcom/android/camera/tts/TTSHelper$Listener;->onTTSStarted()V

    :cond_0
    return-void
.end method

.method onStop(Landroid/util/Pair;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->handleBatchFinished(Landroid/util/Pair;Z)V

    return-void
.end method
