.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;
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
    name = "MiuiSwitchInputMethodListener"
.end annotation


# instance fields
.field private mButtonView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodInstalledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIsLeft:Z

.field private mSupportImeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mButtonView:Landroid/view/View;

    iput-boolean p5, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mIsLeft:Z

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mSupportImeSet:Ljava/util/Set;

    return-void
.end method

.method private deleteNotSupportIme()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mInputMethodInstalledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mSupportImeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_22
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
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mInputMethodInstalledList:Ljava/util/List;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->deleteNotSupportIme()V

    new-instance v0, Landroid/inputmethodservice/InputMethodSwitchPopupView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mInputMethodInstalledList:Ljava/util/List;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mIsLeft:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/inputmethodservice/InputMethodSwitchPopupView;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/inputmethodservice/InputMethodService;Z)V

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2202(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2200()Landroid/inputmethodservice/InputMethodSwitchPopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->initPopupWindow()V

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2200()Landroid/inputmethodservice/InputMethodSwitchPopupView;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mButtonView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "switch_input_method"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->dismissGuideView()V
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1800()V

    return-void
.end method
