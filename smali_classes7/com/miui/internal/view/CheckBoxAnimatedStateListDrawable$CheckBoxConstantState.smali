.class public Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
.super Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
.source ""


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method protected newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    return-object p0
.end method
