.class public Lmiui/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# static fields
.field private static final ENTRIES_INDEX:I = 0x0

.field private static final ENTRYVALUES_INDEX:I = 0x1

.field private static final ImageTextView_Styleable:[I


# instance fields
.field private final VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mCharMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/widget/ImageTextView;->ImageTextView_Styleable:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x10100b2
        0x10101f8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lmiui/widget/ImageTextView;->VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ImageTextView;->setOrientation(I)V

    sget-object v1, Lmiui/widget/ImageTextView;->ImageTextView_Styleable:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1}, Lmiui/widget/ImageTextView;->getDrawableIds(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_44

    if-eqz v3, :cond_44

    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_44

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    :goto_2d
    array-length v5, v2

    if-ge v4, v5, :cond_44

    iget-object v5, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    aget-object v6, v2, v4

    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aget-object v7, v3, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_44
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getDrawableIds(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;
    .registers 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_37

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_37
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3a
    return-object v1
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public setCharMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    if-eqz v0, :cond_6b

    if-eqz p1, :cond_6b

    iget-object v0, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6b

    :cond_f
    iput-object p1, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_58

    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Lmiui/widget/ImageTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_34

    :cond_23
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lmiui/widget/ImageTextView;->VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lmiui/widget/ImageTextView;->addView(Landroid/view/View;)V

    :goto_34
    iget-object v2, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_55

    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_58
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v0

    :goto_5c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_6a

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ImageTextView;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5c

    :cond_6a
    return-void

    :cond_6b
    :goto_6b
    return-void
.end method
