.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener$1;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 8

    const-string/jumbo v0, "textFromXiaoAi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "composingFromXiaoAi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sendFromXiaoAi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1400()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-result-object v3

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_2e

    const-string v4, "InputMethodService"

    const-string v5, "inputConnection is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    const/4 v4, 0x1

    if-eqz v0, :cond_35

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_49

    :cond_35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-interface {v3, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_49

    :cond_3f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_49
    :goto_49
    return-void
.end method
