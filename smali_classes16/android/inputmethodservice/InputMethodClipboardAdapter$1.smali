.class Landroid/inputmethodservice/InputMethodClipboardAdapter$1;
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

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v0}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v1}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/widget/Linkify;->getClipboardFistLink(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v3}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/inputmethodservice/InputMethodUtil;->startBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    return-void
.end method
