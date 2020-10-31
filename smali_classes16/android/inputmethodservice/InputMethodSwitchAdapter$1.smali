.class Landroid/inputmethodservice/InputMethodSwitchAdapter$1;
.super Ljava/lang/Object;
.source "InputMethodSwitchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodSwitchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodSwitchAdapter;

.field final synthetic val$info:Landroid/view/inputmethod/InputMethodInfo;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodSwitchAdapter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;->val$info:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchAdapter;->mClickListener:Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->access$000(Landroid/inputmethodservice/InputMethodSwitchAdapter;)Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    # getter for: Landroid/inputmethodservice/InputMethodSwitchAdapter;->mClickListener:Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->access$000(Landroid/inputmethodservice/InputMethodSwitchAdapter;)Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;->val$info:Landroid/view/inputmethod/InputMethodInfo;

    invoke-interface {v0, p1, v1}, Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;->clickItem(Landroid/view/View;Landroid/view/inputmethod/InputMethodInfo;)V

    :cond_13
    return-void
.end method
