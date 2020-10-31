.class Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getVoiceInputButton()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

.field final synthetic val$voiceButtonHint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iput-object p2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->val$voiceButtonHint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_a9

    const-string/jumbo v3, "start voice recognizer...ACTION_DOWN"

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/inputmethodservice/VoiceInputHelper;->setIsInSpeech(Z)V

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->val$voiceButtonHint:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e01af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # invokes: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getVoiceToTextWindow()Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$400(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;
    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$300(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x11010029

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$500(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_6a

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->startListening(Landroid/content/Context;)V

    goto :goto_9a

    :cond_6a
    iget-object v5, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iget-object v5, v5, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    if-eqz v5, :cond_9a

    iget-object v5, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iget-object v5, v5, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    iget-object v6, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x110e01b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    const-string v5, "No connectivity service"

    invoke-static {v5}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/inputmethodservice/VoiceInputReporter;->reportEvent(ILjava/lang/String;)V

    :cond_9a
    :goto_9a
    const/4 v1, 0x2

    iget-object v5, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/inputmethodservice/VoiceInputReporter;->reportEvent(ILjava/lang/String;)V

    goto :goto_af

    :cond_a9
    const/4 v3, 0x1

    if-eq v0, v3, :cond_b0

    if-ne v0, v1, :cond_af

    goto :goto_b0

    :cond_af
    :goto_af
    goto :goto_da

    :cond_b0
    :goto_b0
    const-string/jumbo v1, "stop voice recognizer...ACTION_UP or ACTION_CANCEL"

    invoke-static {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->val$voiceButtonHint:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110e01b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # invokes: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->hidePopupWindow()V
    invoke-static {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$600(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$200(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->stopListening(Landroid/content/Context;)V

    :goto_da
    return v2
.end method
