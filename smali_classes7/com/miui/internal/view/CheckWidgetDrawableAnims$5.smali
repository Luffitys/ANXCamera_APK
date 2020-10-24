.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;
.super Lmiui/animation/property/FloatProperty;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)F
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->getScale()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;->getValue(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/miui/internal/view/CheckWidgetDrawableAnims;F)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->setScale(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;->setValue(Lcom/miui/internal/view/CheckWidgetDrawableAnims;F)V

    return-void
.end method
