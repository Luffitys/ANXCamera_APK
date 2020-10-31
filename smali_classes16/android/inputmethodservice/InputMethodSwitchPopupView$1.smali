.class Landroid/inputmethodservice/InputMethodSwitchPopupView$1;
.super Ljava/lang/Object;
.source "InputMethodSwitchPopupView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewOnScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodSwitchPopupView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 9

    add-int v0, p3, p2

    const/4 v1, 0x0

    if-ne v0, p4, :cond_37

    if-lez p4, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->access$000(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/widget/ListView;

    move-result-object v0

    sub-int v2, p4, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_2d

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->access$100(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36

    :cond_2d
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->access$100(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    goto :goto_40

    :cond_37
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->access$100(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_40
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
