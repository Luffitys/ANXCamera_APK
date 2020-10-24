.class Landroidx/core/widget/RichContentReceiverCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# instance fields
.field final synthetic this$0:Landroidx/core/widget/RichContentReceiverCompat;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/widget/RichContentReceiverCompat;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->this$0:Landroidx/core/widget/RichContentReceiverCompat;

    iput-object p2, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p3

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t insert from IME; requestPermission() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RichContentReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :goto_0
    new-instance p2, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, p3, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    iget-object p1, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->this$0:Landroidx/core/widget/RichContentReceiverCompat;

    iget-object p0, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroidx/core/widget/RichContentReceiverCompat;->onReceive(Landroid/view/View;Landroid/content/ClipData;II)Z

    move-result p0

    return p0
.end method
