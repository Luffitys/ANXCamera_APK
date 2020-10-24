.class Lcom/android/camera/fragment/mode/ModeAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/ModeAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0

    :cond_1
    if-nez v0, :cond_2

    if-eq p1, v2, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v2
.end method
