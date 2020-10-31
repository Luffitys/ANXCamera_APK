.class Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InputMethodClipboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodClipboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkMoreBtn:Landroid/widget/LinearLayout;

.field checkMoreImage:Landroid/widget/ImageView;

.field firstLineView:Landroid/widget/LinearLayout;

.field itemLayout:Landroid/widget/LinearLayout;

.field textItem:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

.field typeIcon:Landroid/widget/ImageView;

.field typeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
