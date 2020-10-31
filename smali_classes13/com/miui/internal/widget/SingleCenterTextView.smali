.class public Lcom/miui/internal/widget/SingleCenterTextView;
.super Landroid/widget/TextView;
.source "SingleCenterTextView.java"


# instance fields
.field private mEnableSingleCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/SingleCenterTextView;->mEnableSingleCenter:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/miui/internal/widget/SingleCenterTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/miui/internal/widget/SingleCenterTextView;->getGravity()I

    move-result v0

    if-eq v0, v1, :cond_1b

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SingleCenterTextView;->setGravity(I)V

    :cond_1b
    return-void
.end method

.method public setEnableSingleCenter(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/SingleCenterTextView;->mEnableSingleCenter:Z

    return-void
.end method
