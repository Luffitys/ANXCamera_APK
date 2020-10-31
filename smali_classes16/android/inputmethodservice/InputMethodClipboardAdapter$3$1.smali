.class Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;
.super Ljava/lang/Object;
.source "InputMethodClipboardAdapter.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

.field final synthetic val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$3;Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCopy()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$contentModel:Landroid/inputmethodservice/ClipboardContentModel;

    const-string/jumbo v2, "miui_input_no_need_show_pop"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/InputMethodUtil;->setContentToClip(Landroid/content/Context;Landroid/inputmethodservice/ClipboardContentModel;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard_copy_button_click"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardMoreRecord(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    return-void
.end method

.method public onClickDelete()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$400(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$400(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardModelList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard_delete_button_click"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardMoreRecord(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$1;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    return-void
.end method

.method public onInsertToPhrase()V
    .registers 1

    return-void
.end method
