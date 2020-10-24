.class Lmiui/widget/AlphabetFastIndexer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$000(Lmiui/widget/AlphabetFastIndexer;)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$100(Lmiui/widget/AlphabetFastIndexer;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    if-ge v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p0

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
