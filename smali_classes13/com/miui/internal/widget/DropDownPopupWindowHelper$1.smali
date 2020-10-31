.class Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;
.super Landroid/view/ViewOutlineProvider;
.source "DropDownPopupWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/DropDownPopupWindowHelper;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiui/widget/DropDownPopupWindow$ContainerController;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2a

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getPopupShadowAlpha(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_29
    return-void

    :cond_2a
    :goto_2a
    return-void
.end method
