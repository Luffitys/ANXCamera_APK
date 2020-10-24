.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;
.super Lmiui/animation/property/FloatProperty;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;)F
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getScale()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->getValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;F)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setScale(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->setValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;F)V

    return-void
.end method
