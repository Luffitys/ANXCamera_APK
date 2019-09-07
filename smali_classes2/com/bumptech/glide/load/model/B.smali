.class public Lcom/bumptech/glide/load/model/B;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/B$a;,
        Lcom/bumptech/glide/load/model/B$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/t<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/bumptech/glide/load/model/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/B<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/B;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/B;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/B;->INSTANCE:Lcom/bumptech/glide/load/model/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bumptech/glide/load/model/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/model/B<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/model/B;->INSTANCE:Lcom/bumptech/glide/load/model/B;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/model/t$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p0, Lcom/bumptech/glide/load/model/t$a;

    new-instance p2, Lcom/bumptech/glide/e/d;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/e/d;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lcom/bumptech/glide/load/model/B$b;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/load/model/B$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/model/t$a;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/a/d;)V

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
