.class Landroid/inputmethodservice/InputMethodClipboardAdapter$2;
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

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    const-string/jumbo v2, "miui_click_clip_icon_no_need_save"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/InputMethodUtil;->setContentToClip(Landroid/content/Context;Landroid/inputmethodservice/ClipboardContentModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v2}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/InputMethodUtil;->startTaobao(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    :cond_26
    return-void
.end method
