.class Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudClipboardContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->getCloudClipboardContent(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$900(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1102(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J
    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1202(J)J

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1200()J

    move-result-wide v1

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J
    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1302(J)J

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1400()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-result-object v1

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->addCloudClipboardPopView(Landroid/content/Context;)V
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1500(Landroid/content/Context;)V

    const/4 v1, 0x0

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1102(Z)Z

    :cond_3a
    return-void
.end method
