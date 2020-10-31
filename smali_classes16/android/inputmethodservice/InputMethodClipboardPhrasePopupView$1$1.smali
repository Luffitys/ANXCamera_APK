.class Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;
.super Ljava/lang/Object;
.source "InputMethodClipboardPhrasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$400(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodClipboardAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$000(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->setClipboardList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodPhraseAdapter:Landroid/inputmethodservice/InputMethodPhraseAdapter;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$500(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodPhraseAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$200(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->setPhraseList(Ljava/util/ArrayList;)V

    return-void
.end method
