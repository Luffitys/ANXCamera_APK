.class abstract Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final mDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
