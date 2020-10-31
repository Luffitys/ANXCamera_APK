.class Landroid/inputmethodservice/InputMethodClipboardAdapter$3$3;
.super Ljava/lang/Object;
.source "InputMethodClipboardAdapter.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$3;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$3;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$3;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    return-void
.end method
