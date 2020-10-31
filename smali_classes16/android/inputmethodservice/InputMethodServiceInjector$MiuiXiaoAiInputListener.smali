.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiXiaoAiInputListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-static {p2}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sendMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_d

    goto :goto_59

    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sendVoiceActionUp(Landroid/content/Context;J)V

    goto :goto_59

    :cond_17
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1900(Landroid/content/Context;)I

    move-result v0

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1400()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-result-object v2

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2000()Landroid/inputmethodservice/InputMethodService$Insets;

    move-result-object v2

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    sub-int/2addr v0, v2

    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener$1;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener$1;-><init>(Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;)V

    invoke-direct {v6, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1400()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-result-object v2

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    move v7, v0

    invoke-static/range {v3 .. v8}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sendVoiceActionDown(Landroid/content/Context;JLandroid/os/RemoteCallback;II)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "xiaoai_input"

    invoke-static {v2, v3}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->dismissGuideView()V
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1800()V

    nop

    :goto_59
    return v1
.end method
