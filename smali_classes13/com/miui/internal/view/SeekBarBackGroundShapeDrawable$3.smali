.class Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;
.super Ljava/lang/Object;
.source "SeekBarBackGroundShapeDrawable.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;->this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;->this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {v0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->invalidateSelf()V

    return-void
.end method
