.class Landroid/inputmethodservice/InputMethodSwitchPopupView$2;
.super Ljava/lang/Object;
.source "InputMethodSwitchPopupView.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodSwitchPopupView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickItem(Landroid/view/View;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->access$200(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->switchInputMethod(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->access$300(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
