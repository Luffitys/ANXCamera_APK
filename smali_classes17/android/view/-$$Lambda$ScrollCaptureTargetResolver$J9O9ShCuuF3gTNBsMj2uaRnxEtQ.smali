.class public final synthetic Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureTargetResolver;

.field public final synthetic f$1:Landroid/view/ScrollCaptureTarget;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureTargetResolver;Landroid/view/ScrollCaptureTarget;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;->f$0:Landroid/view/ScrollCaptureTargetResolver;

    iput-object p2, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;->f$1:Landroid/view/ScrollCaptureTarget;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;->f$0:Landroid/view/ScrollCaptureTargetResolver;

    iget-object v1, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;->f$1:Landroid/view/ScrollCaptureTarget;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroid/view/ScrollCaptureTargetResolver;->lambda$queryTarget$3$ScrollCaptureTargetResolver(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    return-void
.end method
