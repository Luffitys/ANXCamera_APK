.class Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$1;
.super Ljava/lang/Object;
.source "InputMethodClipboardCheckMoreView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->initPopupWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    return-void
.end method
