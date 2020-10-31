.class Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;
.super Ljava/lang/Object;
.source "InputMethodClipboardPhrasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$100(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodUtil;->getClipboardData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$002(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # invokes: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->queryPhrase()Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$300(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$202(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$600(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
