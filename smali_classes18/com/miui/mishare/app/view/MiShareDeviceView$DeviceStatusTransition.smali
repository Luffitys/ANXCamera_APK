.class Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;
.super Landroid/transition/Transition;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareDeviceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceStatusTransition"
.end annotation


# static fields
.field private static KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "device_status_drawable"

    sput-object v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/mishare/app/view/MiShareDeviceView$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 6

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->KEY:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 6

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->KEY:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 10

    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->KEY:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->KEY:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_30

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v3

    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
