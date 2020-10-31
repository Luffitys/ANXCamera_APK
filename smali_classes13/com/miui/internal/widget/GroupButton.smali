.class public Lcom/miui/internal/widget/GroupButton;
.super Landroid/widget/Button;
.source "GroupButton.java"


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
    .registers 4

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
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .registers 12

    invoke-virtual {p0}, Lcom/miui/internal/widget/GroupButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v1

    return-object v1

    :cond_d
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_98

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3b

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_38

    add-int/lit8 v5, v5, 0x1

    if-ge v6, v2, :cond_35

    const/4 v3, 0x0

    :cond_35
    if-le v6, v2, :cond_38

    const/4 v4, 0x0

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_3b
    const/4 v6, 0x1

    if-ne v5, v6, :cond_40

    move v7, v6

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    :goto_41
    if-ne v1, v6, :cond_66

    add-int/lit8 v6, p1, 0x2

    invoke-super {p0, v6}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v6

    sget-object v8, Lcom/miui/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    invoke-static {v6, v8}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    if-nez v7, :cond_65

    if-eqz v3, :cond_58

    sget-object v8, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_V:[I

    invoke-static {v6, v8}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_65

    :cond_58
    if-eqz v4, :cond_60

    sget-object v8, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_V:[I

    invoke-static {v6, v8}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_65

    :cond_60
    sget-object v8, Lcom/miui/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    invoke-static {v6, v8}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    :cond_65
    :goto_65
    return-object v6

    :cond_66
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    add-int/lit8 v8, p1, 0x1

    invoke-super {p0, v8}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v8

    if-eqz v7, :cond_78

    sget-object v9, Lcom/miui/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    invoke-static {v8, v9}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_97

    :cond_78
    if-eqz v3, :cond_85

    if-eqz v6, :cond_7f

    sget-object v9, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_H:[I

    goto :goto_81

    :cond_7f
    sget-object v9, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_H:[I

    :goto_81
    invoke-static {v8, v9}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_97

    :cond_85
    if-eqz v4, :cond_92

    if-eqz v6, :cond_8c

    sget-object v9, Lcom/miui/internal/widget/GroupButton;->STATE_FIRST_H:[I

    goto :goto_8e

    :cond_8c
    sget-object v9, Lcom/miui/internal/widget/GroupButton;->STATE_LAST_H:[I

    :goto_8e
    invoke-static {v8, v9}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_97

    :cond_92
    sget-object v9, Lcom/miui/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    invoke-static {v8, v9}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    :goto_97
    return-object v8

    :cond_98
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v1

    return-object v1
.end method
