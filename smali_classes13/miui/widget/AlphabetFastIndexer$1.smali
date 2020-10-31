.class Lmiui/widget/AlphabetFastIndexer$1;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # invokes: Lmiui/widget/AlphabetFastIndexer;->checkItemHeight()V
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$000(Lmiui/widget/AlphabetFastIndexer;)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # getter for: Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$100(Lmiui/widget/AlphabetFastIndexer;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v1}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v1

    if-ge v1, v0, :cond_16

    move v1, v0

    :cond_16
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v2}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    if-ge v2, v0, :cond_1f

    move v2, v0

    :cond_1f
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v3}, Lmiui/widget/AlphabetFastIndexer;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v5}, Lmiui/widget/AlphabetFastIndexer;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v2}, Lmiui/widget/AlphabetFastIndexer;->setPadding(IIII)V

    return-void
.end method
