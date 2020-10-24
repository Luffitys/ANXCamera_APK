.class public Lcom/miui/internal/widget/GroupButton;
.super Landroid/widget/Button;
.source ""


# static fields
.field private static final STATE_FIRST_H:[I

.field private static final STATE_FIRST_V:[I

.field private static final STATE_LAST_H:[I

.field private static final STATE_LAST_V:[I

.field private static final STATE_MIDDLE_H:[I

.field private static final STATE_MIDDLE_V:[I

.field private static final STATE_SINGLE_H:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_first_v:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_V:[I

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_middle_v:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_last_v:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_V:[I

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_first_h:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_H:[I

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_middle_h:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_last_h:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_H:[I

    new-array v0, v0, [I

    sget v1, Lcom/miui/internal/R$attr;->state_single_h:I

    aput v1, v0, v3

    sput-object v0, Lcom/miui/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 10

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v4

    move v8, v7

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v2, :cond_1

    move v7, v3

    :cond_1
    if-le v5, v2, :cond_2

    move v8, v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-ne v6, v4, :cond_4

    move v3, v4

    :cond_4
    if-ne v1, v4, :cond_8

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p0

    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    if-nez v3, :cond_7

    if-eqz v7, :cond_5

    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_V:[I

    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_6

    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_V:[I

    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_7
    :goto_1
    return-object p0

    :cond_8
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    add-int/2addr p1, v4

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p0

    if-eqz v3, :cond_9

    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_b

    if-eqz v0, :cond_a

    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_H:[I

    goto :goto_2

    :cond_a
    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_H:[I

    :goto_2
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_4

    :cond_b
    if-eqz v8, :cond_d

    if-eqz v0, :cond_c

    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_H:[I

    goto :goto_3

    :cond_c
    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_H:[I

    :goto_3
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_4

    :cond_d
    sget-object p1, Lcom/miui/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :goto_4
    return-object p0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0
.end method
