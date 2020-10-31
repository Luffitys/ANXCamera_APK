.class Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/VoiceAreaLayoutHelper;->hidePopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    # getter for: Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$700(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
