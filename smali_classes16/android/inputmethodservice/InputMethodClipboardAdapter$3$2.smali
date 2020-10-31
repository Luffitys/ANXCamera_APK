.class Landroid/inputmethodservice/InputMethodClipboardAdapter$3$2;
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


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$3;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$2;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3$2;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;->val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreImage:Landroid/widget/ImageView;

    const v1, 0x1107005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
