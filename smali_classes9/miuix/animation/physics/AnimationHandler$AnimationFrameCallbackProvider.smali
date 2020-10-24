.class abstract Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final mDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor <init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
