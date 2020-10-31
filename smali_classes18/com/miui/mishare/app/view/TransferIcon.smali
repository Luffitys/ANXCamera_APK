.class public Lcom/miui/mishare/app/view/TransferIcon;
.super Landroid/widget/RelativeLayout;
.source "TransferIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/TransferIcon;->setClipToOutline(Z)V

    new-instance v0, Lcom/miui/mishare/app/view/TransferIcon$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/TransferIcon$1;-><init>(Lcom/miui/mishare/app/view/TransferIcon;)V

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/TransferIcon;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/miui/mishare/app/view/TransferIcon;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/mishare/app/view/TransferIcon;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/TransferIcon;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move p1, v1

    move p2, v1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
