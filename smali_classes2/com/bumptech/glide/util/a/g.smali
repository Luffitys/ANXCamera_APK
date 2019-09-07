.class public abstract Lcom/bumptech/glide/util/a/g;
.super Ljava/lang/Object;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/a/g$a;,
        Lcom/bumptech/glide/util/a/g$b;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/util/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/util/a/g;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/bumptech/glide/util/a/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/util/a/g$b;

    invoke-direct {v0}, Lcom/bumptech/glide/util/a/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract Mh()V
.end method

.method abstract u(Z)V
.end method
