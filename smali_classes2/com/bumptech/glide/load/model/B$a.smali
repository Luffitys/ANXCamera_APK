.class public Lcom/bumptech/glide/load/model/B$a;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/bumptech/glide/load/model/B$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/B$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/B$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/B$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/B$a;->FACTORY:Lcom/bumptech/glide/load/model/B$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bumptech/glide/load/model/B$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/model/B$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/model/B$a;->FACTORY:Lcom/bumptech/glide/load/model/B$a;

    return-object v0
.end method


# virtual methods
.method public D()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/x;",
            ")",
            "Lcom/bumptech/glide/load/model/t<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/load/model/B;->getInstance()Lcom/bumptech/glide/load/model/B;

    move-result-object p0

    return-object p0
.end method
