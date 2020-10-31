.class abstract Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;
.super Lcom/android/internal/app/ChooserActivityForCts$ViewHolderBase;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ItemGroupViewHolder"
.end annotation


# instance fields
.field protected final mCells:[Landroid/view/View;

.field private final mColumnCount:I

.field private mItemIndices:[I

.field protected mMeasuredRowHeight:I

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;ILandroid/view/View;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/app/ChooserActivityForCts$ViewHolderBase;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;I)V

    new-array v0, p2, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mItemIndices:[I

    iput p2, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mColumnCount:I

    return-void
.end method


# virtual methods
.method abstract addView(ILandroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public getColumnCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mColumnCount:I

    return v0
.end method

.method public getItemIndex(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mItemIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasuredRowHeight()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return v0
.end method

.method abstract getRow(I)Landroid/view/ViewGroup;
.end method

.method abstract getRowByIndex(I)Landroid/view/ViewGroup;
.end method

.method public getView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method abstract getViewGroup()Landroid/view/ViewGroup;
.end method

.method public measure()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return-void
.end method

.method public setItemIndex(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->mItemIndices:[I

    aput p2, v0, p1

    return-void
.end method

.method abstract setViewVisibility(II)V
.end method
