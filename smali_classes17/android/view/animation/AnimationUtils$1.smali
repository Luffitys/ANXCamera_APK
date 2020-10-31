.class Landroid/view/animation/AnimationUtils$1;
.super Ljava/lang/ThreadLocal;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/view/animation/AnimationUtils$AnimationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/view/animation/AnimationUtils$AnimationState;
    .registers 3

    new-instance v0, Landroid/view/animation/AnimationUtils$AnimationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationUtils$AnimationState;-><init>(Landroid/view/animation/AnimationUtils$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/view/animation/AnimationUtils$1;->initialValue()Landroid/view/animation/AnimationUtils$AnimationState;

    move-result-object v0

    return-object v0
.end method
