.class public Lmiui/util/ActionBarUtils;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1d

    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_b

    move-object v0, p0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    goto :goto_1d

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static setOnScrollListener(Landroid/app/Activity;Lmiui/app/ActionBar$OnScrollListener;)V
    .registers 3

    sget v0, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOnScrollListener(Lmiui/app/ActionBar$OnScrollListener;)V

    return-void
.end method
