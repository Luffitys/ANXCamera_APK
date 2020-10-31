.class public Lmiui/widget/MessageView;
.super Landroid/widget/LinearLayout;
.source "MessageView.java"


# instance fields
.field private mClosable:Z

.field private mCloseBackground:Landroid/graphics/drawable/Drawable;

.field private mCloseIndex:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MessageView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private addCloseIcon()V
    .registers 5

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->message_view_text_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sget v2, Lcom/miui/internal/R$id;->close:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lmiui/widget/MessageView;->mCloseBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lmiui/widget/MessageView$1;

    invoke-direct {v2, p0}, Lmiui/widget/MessageView$1;-><init>(Lmiui/widget/MessageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0, v1}, Lmiui/widget/MessageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    sget-object v0, Lcom/miui/internal/R$styleable;->MessageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$styleable;->MessageView_android_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$styleable;->MessageView_android_textColor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$styleable;->MessageView_closeBackground:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/MessageView;->mCloseBackground:Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/miui/internal/R$styleable;->MessageView_closable:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v6, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v1, v1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$dimen;->message_view_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v5}, Lmiui/widget/MessageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Lmiui/widget/MessageView;->setClosable(Z)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lmiui/widget/MessageView;->setGravity(I)V

    invoke-static {p0}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setClosable(Z)V
    .registers 3

    sget v0, Lcom/miui/internal/R$id;->close:I

    invoke-virtual {p0, v0}, Lmiui/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_e

    if-nez v0, :cond_13

    invoke-direct {p0}, Lmiui/widget/MessageView;->addCloseIcon()V

    goto :goto_13

    :cond_e
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lmiui/widget/MessageView;->removeView(Landroid/view/View;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
