.class Landroid/inputmethodservice/InputMethodClipboardAdapter$3;
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

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;Landroid/inputmethodservice/ClipboardContentModel;I)V
    .registers 5

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    iput p4, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreImage:Landroid/widget/ImageView;

    const v1, 0x1107005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mIsLeft:Z
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$200(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mParentView:Landroid/view/View;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->initPopupWindow(Landroid/view/View;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$3;Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setCheckMoreListener(Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$2;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$3;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$500(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$3;

    invoke-direct {v2, p0, v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$3;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$3;Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
