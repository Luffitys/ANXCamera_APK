.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$4;
.super Lmiui/animation/property/FloatProperty;
.source "CheckWidgetDrawableAnims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/CheckWidgetDrawableAnims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$4;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;)F
    .registers 3

    invoke-virtual {p1}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getContentAlpha()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$4;->getValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;F)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_7

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    move p2, v0

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_f

    goto :goto_10

    :cond_f
    move v0, p2

    :goto_10
    move p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setContentAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$4;->setValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;F)V

    return-void
.end method
