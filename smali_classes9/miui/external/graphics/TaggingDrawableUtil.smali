.class public Lmiui/external/graphics/TaggingDrawableUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final STATES_TAGS:[I

.field public static final STATE_SET_FIRST:[I

.field public static final STATE_SET_LAST:[I

.field public static final STATE_SET_MIDDLE:[I

.field public static final STATE_SET_SINGLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lmiui/R$attr;->state_single_v:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lmiui/R$attr;->state_first_v:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lmiui/R$attr;->state_middle_v:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lmiui/R$attr;->state_last_v:I

    const/4 v4, 0x3

    aput v1, v0, v4

    sput-object v0, Lmiui/external/graphics/TaggingDrawableUtil;->STATES_TAGS:[I

    new-array v0, v3, [I

    sget v1, Lmiui/R$attr;->state_single_v:I

    aput v1, v0, v2

    sput-object v0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    new-array v0, v3, [I

    sget v1, Lmiui/R$attr;->state_first_v:I

    aput v1, v0, v2

    sput-object v0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    new-array v0, v3, [I

    sget v1, Lmiui/R$attr;->state_middle_v:I

    aput v1, v0, v2

    sput-object v0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    new-array v0, v3, [I

    sget v1, Lmiui/R$attr;->state_last_v:I

    aput v1, v0, v2

    sput-object v0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_LAST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateBackgroundState(Landroid/view/View;II)V
    .locals 3

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lmiui/external/graphics/TaggingDrawableUtil;->STATES_TAGS:[I

    invoke-static {v1, v2}, Lmiui/external/graphics/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmiui/external/graphics/TaggingDrawable;

    invoke-direct {v1, v0}, Lmiui/external/graphics/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_1
    instance-of p0, v0, Lmiui/external/graphics/TaggingDrawable;

    if-eqz p0, :cond_5

    check-cast v0, Lmiui/external/graphics/TaggingDrawable;

    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    sget-object p0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    goto :goto_0

    :cond_3
    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_4

    sget-object p0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_LAST:[I

    goto :goto_0

    :cond_4
    sget-object p0, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    :goto_0
    invoke-virtual {v0, p0}, Lmiui/external/graphics/TaggingDrawable;->setTaggingState([I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static updateBackgroundState(Landroid/view/View;[I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lmiui/external/graphics/TaggingDrawableUtil;->STATES_TAGS:[I

    invoke-static {v1, v2}, Lmiui/external/graphics/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmiui/external/graphics/TaggingDrawable;

    invoke-direct {v1, v0}, Lmiui/external/graphics/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_1
    instance-of p0, v0, Lmiui/external/graphics/TaggingDrawable;

    if-eqz p0, :cond_2

    check-cast v0, Lmiui/external/graphics/TaggingDrawable;

    invoke-virtual {v0, p1}, Lmiui/external/graphics/TaggingDrawable;->setTaggingState([I)Z

    :cond_2
    return-void
.end method

.method public static updateItemBackground(Landroid/view/View;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiui/external/graphics/TaggingDrawableUtil;->updateBackgroundState(Landroid/view/View;II)V

    invoke-static {p0, p1, p2}, Lmiui/external/graphics/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    return-void
.end method

.method public static updateItemPadding(Landroid/view/View;II)V
    .locals 4

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/compat/R$dimen;->miuix_compat_drop_down_menu_padding_small:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lmiuix/compat/R$dimen;->miuix_compat_drop_down_menu_padding_small:I

    :goto_1
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/compat/R$dimen;->miuix_compat_drop_down_menu_padding_large:I

    goto :goto_0

    :cond_3
    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/compat/R$dimen;->miuix_compat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lmiuix/compat/R$dimen;->miuix_compat_drop_down_menu_padding_large:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_3
    return-void
.end method
