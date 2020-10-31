.class Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$3;
.super Ljava/lang/Object;
.source "InputMethodClipboardPhrasePopupView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

.field final synthetic val$inputMethodAlertDialog:Landroid/inputmethodservice/InputMethodAlertDialog;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;Landroid/inputmethodservice/InputMethodAlertDialog;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$3;->val$inputMethodAlertDialog:Landroid/inputmethodservice/InputMethodAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    const-string v0, "InputMethodClipboard"

    const-string v1, "InputMethodClipboardPhrasePopupView onDismiss."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$3;->val$inputMethodAlertDialog:Landroid/inputmethodservice/InputMethodAlertDialog;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodAlertDialog;->dismiss()V

    return-void
.end method
