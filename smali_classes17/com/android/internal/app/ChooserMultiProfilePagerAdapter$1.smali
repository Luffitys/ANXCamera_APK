.class Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;
.super Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field final synthetic val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic val$chooserGridAdapterCts:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

.field final synthetic val$glm:Lcom/android/internal/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    iput-object p4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapterCts:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->shouldCellSpan(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :goto_12
    return v1

    :cond_13
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapterCts:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->shouldCellSpan(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_22

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :goto_22
    return v1
.end method
