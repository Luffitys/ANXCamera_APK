.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;
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

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;)F
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getScale()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->getValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;F)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setScale(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;->setValue(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;F)V

    return-void
.end method
