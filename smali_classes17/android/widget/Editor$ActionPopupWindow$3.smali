.class Landroid/widget/Editor$ActionPopupWindow$3;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Lcom/android/internal/phrase/QueryPhraseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$ActionPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;

.field final synthetic val$isPasswordInputType:Z

.field final synthetic val$shouldNotShowMainPanel:Z


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;ZZ)V
    .registers 4

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iput-boolean p2, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$isPasswordInputType:Z

    iput-boolean p3, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$shouldNotShowMainPanel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # setter for: Landroid/widget/Editor$ActionPopupWindow;->mPhrases:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Landroid/widget/Editor$ActionPopupWindow;->access$5302(Landroid/widget/Editor$ActionPopupWindow;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPopupWindow;->mPhrases:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$5300(Landroid/widget/Editor$ActionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$isPasswordInputType:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$shouldNotShowMainPanel:Z

    if-eqz v1, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_36

    :cond_1d
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$5400(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x110e0001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_36

    :cond_2a
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$5400(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x110e00a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_36
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$5400(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_40

    const/4 v2, 0x0

    goto :goto_42

    :cond_40
    const/16 v2, 0x8

    :goto_42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # invokes: Landroid/widget/Editor$ActionPopupWindow;->setMainPanelChildPadding(Z)V
    invoke-static {v1, v0}, Landroid/widget/Editor$ActionPopupWindow;->access$5500(Landroid/widget/Editor$ActionPopupWindow;Z)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # invokes: Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$5601(Landroid/widget/Editor$ActionPopupWindow;)V

    return-void
.end method
