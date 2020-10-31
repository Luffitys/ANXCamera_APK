.class Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;
.super Ljava/lang/Object;
.source "InputMethodClipBubblePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipBubblePopupView;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->access$000(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    # getter for: Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->access$100(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardBubbleAutoCloseRecord(Landroid/content/Context;I)V

    :cond_1c
    return-void
.end method
