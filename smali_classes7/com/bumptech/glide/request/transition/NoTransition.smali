.class public Lcom/bumptech/glide/request/transition/NoTransition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# static fields
.field static final NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

.field private static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/request/transition/Transition;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

    return-object v0
.end method

.method public static getFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-object v0
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
