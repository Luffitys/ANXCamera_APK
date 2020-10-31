.class Landroid/speech/SpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    goto :goto_2f

    :cond_f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/RecognitionListener;

    # invokes: Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->access$300(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V

    goto :goto_2f

    :cond_19
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    # invokes: Landroid/speech/SpeechRecognizer;->handleCancelMessage()V
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$200(Landroid/speech/SpeechRecognizer;)V

    goto :goto_2f

    :cond_1f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    # invokes: Landroid/speech/SpeechRecognizer;->handleStopMessage()V
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$100(Landroid/speech/SpeechRecognizer;)V

    goto :goto_2f

    :cond_25
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    # invokes: Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->access$000(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V

    nop

    :goto_2f
    return-void
.end method
