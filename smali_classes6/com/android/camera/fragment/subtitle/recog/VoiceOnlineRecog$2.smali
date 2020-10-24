.class Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    iput-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->val$result:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    return-void
.end method
