.class Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSignal:Landroidx/core/os/CancellationSignal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-object p0
.end method

.method getSignal()Landroidx/core/os/CancellationSignal;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    return-object p0
.end method
