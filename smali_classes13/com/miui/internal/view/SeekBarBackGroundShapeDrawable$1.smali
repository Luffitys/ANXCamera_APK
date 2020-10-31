.class Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;
.super Lmiui/animation/property/FloatProperty;
.source "SeekBarBackGroundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;->this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)F
    .registers 3

    invoke-virtual {p1}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->getBlackAlpha()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;->getValue(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;F)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->setBlackAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;->setValue(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;F)V

    return-void
.end method
