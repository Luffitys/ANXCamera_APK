.class Landroid/inputmethodservice/InputMethodPhraseAdapter$1;
.super Ljava/lang/Object;
.source "InputMethodPhraseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodPhraseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodPhraseAdapter;I)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    iput p2, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$000(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$000(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodPhraseAdapter;->mPhraseList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$100(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_26
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$200(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodPhraseAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$300(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phrase_item_click"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardMoreRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
