.class Lcom/android/camera/tts/TTSHelper$SpeechRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final mListener:Lcom/android/camera/tts/TTSHelper$Listener;

.field final mTextToSpeak:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mTextToSpeak:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    return-void
.end method
