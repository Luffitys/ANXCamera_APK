.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiClipboardPhraseListener"
.end annotation


# instance fields
.field private mButtonView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIsLeft:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mButtonView:Landroid/view/View;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-boolean p4, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mIsLeft:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2200()Landroid/inputmethodservice/InputMethodSwitchPopupView;

    move-result-object v0

    if-eqz v0, :cond_11

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2200()Landroid/inputmethodservice/InputMethodSwitchPopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2300()Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v0

    if-eqz v0, :cond_22

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2300()Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2400()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2500()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1102(Z)Z

    new-instance v0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mIsLeft:Z

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mButtonView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;ZLandroid/view/View;)V

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2302(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2300()Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->initPopupWindow()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;->mContext:Landroid/content/Context;

    const-string v1, "clipboard_phrase"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->dismissGuideView()V
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1800()V

    return-void
.end method
