.class Landroid/inputmethodservice/InputMethodClipboardAdapter$4;
.super Ljava/lang/Object;
.source "InputMethodClipboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

.field final synthetic val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/ClipboardContentModel;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v1}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1e
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$500(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v0}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v1}, Landroid/inputmethodservice/ClipboardContentModel;->getType()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Landroid/inputmethodservice/InputMethodUtil;->addClipboard(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard_item_click"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardMoreRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
