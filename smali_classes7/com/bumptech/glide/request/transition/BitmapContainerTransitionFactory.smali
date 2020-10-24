.class public abstract Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# instance fields
.field private final realFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;->realFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;->realFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/transition/TransitionFactory;->build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;

    invoke-direct {p2, p0, p1}, Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;-><init>(Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;Lcom/bumptech/glide/request/transition/Transition;)V

    return-object p2
.end method

.method protected abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method
